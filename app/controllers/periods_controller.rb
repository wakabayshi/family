class PeriodsController < ApplicationController
  def index
    a=[0,0,0,0,0,0,0,0,0,0]
    Appointment.all.each do |idx|
      0.upto(9) do |s|
        if idx.period_id===s+1
          a[s]+=1
        end
      end
    end
    Appointment.all.each do |idx|
      1.upto(10) do |s|
        period=Period.find(s)
        number=period.number
        if idx.period_id===s
          period.number+=1
          if period.number<=a[s-1]
            period.save
          end
        end
      end
    end 

    @period=Period.all
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
