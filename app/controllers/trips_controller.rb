class TripsController < ApplicationController

  def show 
    @trip = Trip.find(params[:id])
  end

  def new
    @user_id = current_user.id
    @trip = Trip.new
    2.times { @trip.stops.build }
  end

  def create
    @trip = Trip.new(trip_params)
    if @trip.save
      redirect_to trip_path(@trip)
    else
      render "new"
    end
  end

  private
  def trip_params
    params.require(:trip).permit(:name, :user_id, stops_attributes: [ :location, :trip_id, :stop_number ])
  end
end