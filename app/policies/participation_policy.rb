class ParticipationPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
  def create?
    true
  end
  def past_participations?
    true
  end
  def upcoming_participations?
    true
  end
end
