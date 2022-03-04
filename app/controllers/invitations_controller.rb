class InvitationsController < ApplicationController
  def create
    @invitation = Invitation.new(invitation_params)
    @invitation.user = current_user
    authorize @invitation

    if @invitation.save
      redirect_to my_profile_path
    else
      render :my_profile
    end
  end

  private

  def invitation_params
    params.require(:invitation).permit(:email)
  end
end
