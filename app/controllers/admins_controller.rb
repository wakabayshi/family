class AdminsController < ApplicationController
  def index

  end
  def show
    @account=current_account
  end

  def new
    @account=Account.new()
  end

  def edit
    @account=current_account
  end

  def create
    @account=Account.new(params[:account])
    if @account.save
      redirect_to "/",notice: "患者を登録しました"
    else
      render "new"
    end
  end

  def update
    @account=Account.find(params[:id])
    @account.assign_attributes(params[:account])
    if @account.save
      redirect_to "/",notice: "患者情報を更新しました"
    else
      render "edit"
    end
  end

  def destroy
    @account=Account.find(params[:id])
    @account.destroy
    redirect_to :accounts,notice: "患者を削除しました"
  end
end
