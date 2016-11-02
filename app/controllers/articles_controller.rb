class ArticlesController < ApplicationController
  def index
  end
  
  def new
    @article = Article.new
  end
  
  def created
    @article = Article.new
    @article.save
    flash[:seccess] = "Article has been created"
    redirect_to articles_path
  end
  
  private
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
