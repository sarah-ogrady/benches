class BenchesController < ApplicationController
  def index
    @benches = Bench.all
    @markers = @benches.geocoded.map do |bench|
      {
        lat: bench.latitude,
        lng: bench.longitude,
        info_window: render_to_string(partial: "info_window", locals: { bench: bench }),
        image_url: helpers.asset_url("bench-marker.png")
      }
    end
  end

  def show
    @bench = Bench.find(params[:id])
  end

  def create
    @bench = Bench.new(bench_params)
    @bench.user = current_user
    if @bench.save
      redirect_to bench_path(@bench)
    end
  end

  def update

  end

  private

  def bench_params
    params.require(:bench).permit(:latitude, :longitude, :dedication, :inscription, :comfort_rating, :address)
  end
end
