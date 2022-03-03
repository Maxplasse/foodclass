class ParticipationsController < ApplicationController
  def past_participations
    @past_participations = Participation.past
    authorize(:participation, :past_participations?)

    if params[:query] && !params[:query].empty?
      @courses = policy_scope(Course).order(created_at: :desc)
      PgSearch::Multisearch.rebuild(Course)
      PgSearch::Multisearch.rebuild(Chef)
      @results = PgSearch.multisearch(params[:query])

      @past_participations = []
      if @results.group_by(&:searchable_type)["Chef"]
        @results.group_by(&:searchable_type)["Chef"].each do |chef|
          chef.searchable.courses.each do |past_participation|
            @past_participations << past_participation
          end
        end
      end

      if @results.group_by(&:searchable_type)["Course"]
        @results.group_by(&:searchable_type)["Course"].each do |past_participation|
          @past_participations << past_participation.searchable
        end
      end
    else
      @past_participations = policy_scope(Course).order(created_at: :desc)
    end
  end

  def upcoming_participations
    @upcoming_participations = Participation.upcoming
    authorize(:participation, :upcoming_participations?)
  end

  def favorites
    @favorites = Participation.favorites
    authorize(:participation, :favorites?)
  end

  def create
    @course = Course.find(params[:course_id])
    @participation = Participation.new(participation_params)
    @participation.course = @course
    @participation.user = current_user
    authorize @participation
    if @participation.save
      redirect_to course_path(@course), notice: "Demande de réservation envoyée!"
    else
      render :new
    end
  end

  private

  def participation_params
    params.require(:participation).permit(:favorite)
  end
end
