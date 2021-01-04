class ApplicationController < ActionController::Base
  private def current_account
    Account.find_by(id: session[:account_id]) if session[:account_id]
  end
  helper_method :current_account

  class Loginrequired < StandardError; end
  class Forbidden < StandardError; end

  private def login_required
    raise Loginrequired unless current_account
  end
end
