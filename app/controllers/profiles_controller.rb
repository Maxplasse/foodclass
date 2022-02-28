class ProfilesController < ApplicationController
  def show
    @profile = Profile.find(:user_id)
  end

  def sponsorship
    @sponsorship = Sponsorship.new
  end
end
