class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    article = Article.new
    article.title = params[:article][:title]
    article.content = params[:article][:content]
    article.save
    redirect_to article
  end

  def show

  end
end
