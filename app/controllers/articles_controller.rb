class ArticlesController < ApplicationController
  before_action :set_article, only: [:show]

  # GET /articles
  def index
    @articles = Article.all
    @articles = @articles.quick_search(params[:q]) if params[:q].present?
    @articles = @articles.order(created_at: :desc)
  end

  # GET /articles/1
  def show
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = Article.find(params[:id])
  end
end
