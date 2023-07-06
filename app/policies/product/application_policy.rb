# frozen_string_literal: true

class Product::ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    false
  end

  def show?
    false
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

  delegate :admin, :admin?, to: :user

  def can_action?(controller_name, action_name)
    # cmd = Acl::PolicyCommands::Authenticate.call(
    #   controller_name: controller_name,
    #   action_name: action_name,
    #   user: user
    # )
    # cmd.result

    true
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope.all
    end
  end
end
