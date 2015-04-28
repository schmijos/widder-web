class HomeController < ApplicationController
  def index
    @newest_article = Article.last
  end
end
