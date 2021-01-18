class SearchsController < ApplicationController
  def search
    @model = params["model"]
    @content = params["content"]
    # @method = params["method"]
    @records = search_for(@model, @content)
  end

  private
  def search_for(model, content)
    if content.present?
      @rel=[]
      if model == 'department'
        # if method == 'perfect'
        #   Department.where(name: content)
        # else
        rel=current_account.departments.where('name LIKE ?', '%'+content+'%')
        # end
      elsif model == 'period'
        # if method == 'perfect'
        #   Period.where(time: content)
        # else
        rel=current_account.periods.where('time LIKE ?', '%'+content+'%')
        # end
          # rel.all.each do |idx|
          #   if idx.accounts==current_account
          #     @rel.push(idx)
          #   end
          # end
      end
      rel
    else
      redirect_to "/appointments"
    end
  end
end
