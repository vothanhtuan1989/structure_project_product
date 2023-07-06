module Product
  class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    include Pundit::Authorization
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

    def user_not_authorized
      render 'shared/user_not_authorized'
    end
  end
end
