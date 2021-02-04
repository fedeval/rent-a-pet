class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def accept?
    record.pet.user == user
  end

  def deny?
    record.pet.user == user
  end
end
