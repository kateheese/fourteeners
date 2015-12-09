class RangesController < ApplicationController
  def index
    allRanges = Fourteener.new
    @ranges = allRanges.ranges["data"]
  end

  def show
    oneRange = Fourteener.new
    @rangeName = params[:range]
    @peaks = oneRange.show_range(params[:range])["data"]
    puts @peaks
  end
end
