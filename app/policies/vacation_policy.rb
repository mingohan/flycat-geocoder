# frozen_string_literal: true

class VacationPolicy < ApplicationPolicy
  def index?
    staff || manager || admin
  end

  def new?
    create?
  end

  def create?
    staff || manager
  end

  def show?
    index?
  end

  def edit?
    update?
  end

  def update?
    staff
  end

  def signoff?
    manager || admin
  end

  def destroy?
    staff || manager || admin
  end

  def admin?
    admin
  end

  def manager?
    manager
  end

end
