class Api::EventsController < ApplicationController

  def show
    @events = current_user.itineraries.events
    render json: @itinerary
  end

  def index
    events = Event.seed_itinerary_with_events()  
    render json: events, status: 200
  end

  def create
    event = Event.all.sample(1)
    render json: event, status: 200
  end

  def edit
    
  end

  def get_event
    event = Event.all.sample(1)
    render json: event, status: 200
  end
end