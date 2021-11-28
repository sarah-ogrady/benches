class MerchandisesController < ApplicationController
  def index
    @merchandises = Merchandise.all
  end

  def show
    @merchandise = Merchandise.find(params[:id])
  end
end
