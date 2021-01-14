class SearchsController < ApplicationController
  def search
    @model = params["model"]
    @content = params["content"]
    @method = params["method"]
    @records = search_for(@model, @content, @method)
  end

  private
  def search_for(model, content, method)
    if model == 'department'
      if method == 'perfect'
        Department.where(name: content)
      else
        Appointment.department.where('name LIKE ?', '%'+content+'%')
      end
    elsif model == 'period'
      if method == 'perfect'
        Period.where(time: content)
      else
        Period.where('time LIKE ?', '%'+content+'%')
      end
    end
  end
end
