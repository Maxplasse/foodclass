class ParticipantsController < ApplicationController
  def past_participations
    @past_participations = Participation.created_before(DateTime.now)
  end

  def upcoming_participations
    @upcoming_participations = Participation.created_after(DateTime.now)
  end

  def create
  end

  def favorites
  end

  private

  def participant_params
    params.require(:participant).permit(:favorite)
  end
end
