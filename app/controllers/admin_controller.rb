class AdminController < ApplicationController
  http_basic_authenticate_with name: ENV['ADMIN_NAME'], password:  ENV['ADMIN_PASS']

  layout 'admin'

  # GET /admin
  def index
  end


end
