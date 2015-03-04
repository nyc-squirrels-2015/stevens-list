class CategoriesController < ApplicationController
  
  def index
    @categories = Category.all
    @category = Category.new
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    #this displays the new category form
    @category = Category.new
  end

  def create
    #this will get called when we post a new category
    @category = Category.new(catetory_params)
    if @category.save
      redirect_to root_path
    else
      render :index
    end
  end

  def edit
    #this displays the new category form
    @category = Category.find(params[:id])
  end

  def update
    #this gets called when we PATCH/PUT the category from the form
  end

  private

  def catetory_params
    params.require(:category).permit([:name, :description])
  end



end