class ClothePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def index?
      true
    end

    def show?
      index?
    end

    def new?
      true
    end

    def create?
      new?
    end

    def destroy?
      record.user == user
    end

  end
end
