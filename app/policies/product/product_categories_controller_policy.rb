# frozen_string_literal: true

module Product
  class ProductCategoriesControllerPolicy < ApplicationPolicy
    CONTROLLER = 'Product::ProductCategoriesController'

    def index?
      can_action?(CONTROLLER, 'index')
      # admin?
    end

    def show?
      can_action?(CONTROLLER, 'index')
      # admin?
    end

    def new?
      can_action?(CONTROLLER, 'create')
      # admin?
    end

    def create?
      can_action?(CONTROLLER, 'create')
      # admin?
    end

    def edit?
      can_action?(CONTROLLER, 'update')
      # admin?
    end

    def update?
      can_action?(CONTROLLER, 'update')
      # admin?
    end

    def destroy?
      can_action?(CONTROLLER, 'destroy')
      # admin?
    end
  end
end
