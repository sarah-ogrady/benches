class BenchesController < ApplicationController
  def index
    @benches = Bench.all
  end
end
