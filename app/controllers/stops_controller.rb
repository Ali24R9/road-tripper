class StopsController < ApplicationController

private
def stop_params
    params.require(:stop).permit(:location, :trip_id)
end
end