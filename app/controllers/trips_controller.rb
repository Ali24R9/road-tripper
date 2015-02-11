class TripsController < ApplicationController

  def show 
    @trip = Trip.find(params[:id])
  end

  def new
    @trip = Trip.new
    2.times { @trip.stops.build }
  end

  def create
    params[:trip_id] = current_user.id
    @trip = Trip.new(trip_params)
    if @trip.save
      # @stop = Stop.create(location: params["trip"]["stop"]["start"], trip_id: @trip.id)
      # @stop_two = Stop.create(location: params["trip"]["stop"]["finish"], trip_id: @trip.id)
      render "show"
    else
      redirect_to "users/show/#{current_user.id}"
    end
  end

  def add_stop
    @trip = Trip.new
    @trip.stops.build
    # @stop = Stop.new
    # respond_to do |format|
    #   format.js
    # end
    render "new"
  end

  private
    def trip_params
        params.require(:trip).permit(:name, :user_id, stops_attributes: [ :location, :trip_id, :stop_number])
    end
end