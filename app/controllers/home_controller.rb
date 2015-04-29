class HomeController < ApplicationController
  def index
    @newest_article = Article.last
    @visions = Vision.all
  end
end
