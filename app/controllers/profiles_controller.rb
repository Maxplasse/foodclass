class ProfilesController < ApplicationController
  def show
    @user = current_user
    authorize @user
    @invitation = Invitation.new
  end

  # def sponsorship
  #   @sponsorship = Sponsorship.new
  # end
end
