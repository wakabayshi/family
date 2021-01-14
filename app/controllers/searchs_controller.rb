class SearchsController < ApplicationController
  def search
    @model = params["model"]
    @content = params["content"]
    @method = params["method"]
    @records = search_for(@model, @content, @method)
  end

  private
  def search_for(model, content, method)
    if content.present?
      if model == 'department'
        if method == 'perfect'
          Department.where(name: content)
        else
          Department.where('name LIKE ?', '%'+content+'%')
        end
      elsif model == 'period'
        if method == 'perfect'
          Period.where(time: content)
        else
          Period.where('time LIKE ?', '%'+content+'%')
        end
      end
    else
      redirect_to "/appointments"
    end
  end
end
