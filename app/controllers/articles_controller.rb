class ArticlesController < ApplicationController
  
  def new
    @category = Category.find(params[:category_id])
    @article = Article.new
  end

  def create
    @category = Category.find(params[:category_id])

    @article = @category.articles.build(article_params)

    if @article.save
      redirect_to category_article_path(@category, @article )
    else
      render :new
    end

  end

  private

  def article_params
    params.require(:article).permit(:content, :title)
  end
end