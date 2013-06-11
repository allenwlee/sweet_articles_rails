class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def yeabuddy
    p "*********"
    p params
    p clean_title = params[:title].gsub('-'," ")
    @article = Article.where("title = ?", clean_title).first
    redirect_to category_article_path(@article.category, @article)
    # redirect_to "/categories/<%= @article.category_id %>/articles/<%= @article.id%>"
  end
end

