class Api::ItineraryEventsController < ApplicationController

  def show
    current_user.itineraries.find(params[:id]).events
  end

end