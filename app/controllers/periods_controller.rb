class PeriodsController < ApplicationController
  def index

  end
  def show

  end

  def new
    @period=Period.new()
  end

  def edit

  end

  def create
    @period=Period.new(params[:period])
    if @period.save
      redirect_to "/",notice: "予約をしました"
    else
      render "new"
    end
  end

  def update
  end

  def destroy
  end
end
