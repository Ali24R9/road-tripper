class StopsController < ApplicationController

private
  def stop_params
      params.require(:stop).permit(:location)
  end
end