class ProfilesController < ApplicationController
  def show
    @user = current_user
    authorize @user
  end

  def sponsorship
    @sponsorship = Sponsorship.new
  end
end
