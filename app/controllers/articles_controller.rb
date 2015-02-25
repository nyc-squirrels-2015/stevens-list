class ArticlesController < ApplicationController
  
  def new
    @category = Category.find(params[:category_id])
    @article = Article.new
  end

  def create
  end
end