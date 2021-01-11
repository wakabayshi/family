class TopController < ApplicationController
  def index
    @account=Account.order(:id)
  end
end
