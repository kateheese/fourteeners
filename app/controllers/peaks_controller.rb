class PeaksController < ApplicationController
  def index
    allPeaks = Fourteener.new
    @peaks = allPeaks.peaks["data"]
  end

  def show
    onePeak = Fourteener.new
    @peak = onePeak.show_peak(params[:id])["data"][0]
    lat = @peak["attributes"]["latitude"]
    lon = @peak["attributes"]["longitude"]

    @hash = Gmaps4rails.build_markers(@peak) do |peak, marker|
      marker.lat lat
      marker.lng lon
    end
  end
end
