class CategoriesController < ApplicationController
  def show
    @category = Category.find_by slug: params[:id]
    respond_to do |format|
      format.html { render :show }
      format.js { render "categories/modals/category_show.js"  }
    end
  end
end