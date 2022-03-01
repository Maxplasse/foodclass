class ProfilesController < ApplicationController
  def show
    @profile = Profile.find(:id)
  end

  def sponsorship
    @sponsorship = Sponsorship.new
  end
end
