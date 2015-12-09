class PeaksController < ApplicationController
  def index
    allPeaks = Fourteener.new
    @peaks = allPeaks.peaks["data"]
  end

  def show
    onePeak = Fourteener.new
    @peak = onePeak.show_peak(params[:id])["data"][0]
  end
end
