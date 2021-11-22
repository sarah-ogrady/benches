class MerchandisesController < ApplicationController
  def index
    @merchandises = Merchandise.all
  end
end
