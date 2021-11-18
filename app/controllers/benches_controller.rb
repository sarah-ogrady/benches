class BenchesController < ApplicationController
  def index
    @benches = Bench.all
    @markers = @benches.geocoded.map do |bench|
      {
        lat: bench.latitude,
        lng: bench.longitude,
        info_window: render_to_string(partial: "info_window", locals: { bench: bench })
      }
    end
  end

  def show
    @bench = Bench.find(params[:id])
  end
end
