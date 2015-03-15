class Api::EventController < ApplicationController

  def index
    event = Event.all.sample(1)
    render json: event, status: 200
  end

  def show
    id = params[:id]
    events = Itinerary.find(id).events
    render json: events, status: 200
  end

end