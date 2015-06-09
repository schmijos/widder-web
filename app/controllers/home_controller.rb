class HomeController < ApplicationController
  def index
    @newest_article = Article.order(created_at: :desc).first
    @visions = Vision.all
  end
end
