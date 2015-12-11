class ClimbsController < ApplicationController
  def index
    @climbs = current_user.climbs.sort_by { |k| k["rank"] }
    @total_elevation = @climbs.map {|s| s['elevation']}.reduce(0, :+)
  end

  def new
    allPeaks = Fourteener.new
    @peaks = allPeaks.peaks["data"]
    @climb = Climb.new
  end

  def create
    @climb = current_user.climbs.new(params.require(:climb).permit(:peak_id, :peak_name, :rank, :elevation))
    @climb.save
    if @climb.save
      success = true
      redirect_to peaks_show_path(@climb["peak_id"])
    else
      success = false
      redirect_to climbs_path
    end
  end

  def destroy
    @climb = Climb.find(params[:id])
    @climb.destroy
   
    redirect_to climbs_path
  end
end