class ParticipantsController < ApplicationController
  def past_participations
    @past_participations = Participation.created_before(DateTime.now)
  end

  def upcoming_participations
    @upcoming_participations = Participation.created_after(DateTime.now)
  end

  def create
    @course = Course.find(params[:course_id])
    @participant = Participant.new(participant_params)
    @participant.course = @course
    @participant.user = current_user
    authorize @participant
    if @participant.save
      redirect_to course_path(@course), notice: "Demande de réservation envoyée !"
    else
      render :new
    end
  end

  def favorites
  end

  private

  def participant_params
    params.require(:participant).permit(:favorite)
  end
end
