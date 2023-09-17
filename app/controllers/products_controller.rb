class ProductsController < ApplicationController
  before_action :authenticate_request

  def show
    render json: current_user
  end
end