class ParticipationsController < ApplicationController
  def past_participations
    @past_participations = Participation.created_before(DateTime.now)
  end

  def upcoming_participations
    @upcoming_participations = Participation.created_after(DateTime.now)
  end

  def create
    @course = Course.find(params[:course_id])
    @participation = Participation.new(participation_params)
    @participation.course = @course
    @participation.user = current_user
    authorize @participation
    if @participation.save
      redirect_to course_path(@course), notice: "Demande de réservation envoyée !"
    else
      render :new
    end
  end

  def favorites
  end

  private

  def participation_params
    params.require(:participation).permit(:favorite)
  end
end