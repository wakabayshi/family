class SessionsController < ApplicationController
  def create
    account=Account.find_by(name: params[:name])
    if account&.authenticate(params[:password])
      session[:account_id]=account.id
    else
      flash.alert="名前とパスワードが一致しません"
    end
    redirect_to :root
  end

  def destroy
    session.delete(:account_id)
    redirect_to :root
  end
end
