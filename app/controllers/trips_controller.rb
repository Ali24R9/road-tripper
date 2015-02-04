class TripsController < ApplicationController

  def create
    params[:trip_id] = current_user.id
    @trip = Trip.new(trip_params)
    if @trip.save
      @stop = Stop.create(location: params["trip"]["stop"]["start"], trip_id: @trip.id)
      @stop_two = Stop.create(location: params["trip"]["stop"]["finish"], trip_id: @trip.id)
      render "show"
    else
      redirect_to "/show/#{current_user.id}"
    end
  end

  private
    def trip_params
        params.require(:trip).permit(:name, :trip_id)
    end
end