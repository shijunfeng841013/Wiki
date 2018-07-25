class ArticlesController < ApplicationController
  def index

  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def find_article

  end
end
