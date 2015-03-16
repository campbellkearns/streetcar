class Api::EventsController < ApplicationController

  def index
    events = Event.seed_itinerary_with_events()  
    render json: events, status: 200
  end

  def show
    #@events = current_user.itineraries.events
    @events = current_user.itineraries.find(params[:id]).events
    render json: @events
  end

  def create
    itinerary = current_user.itineraries.create!(itinerary_params)
    events = params[:events]
    events.each do |event|
      itinerary = params[:itinerary]
      EventsItinerary.create(itinerary_id: itinerary.id, event_id: event.id)
    end
  end

  def edit    
  end

  def get_event
    event = Event.all.sample
    render json: event, status: 200
  end

  private
    def itinerary_params
      params.require(:itinerary).permit(:name, :date)
    end

end

  # def show
  #   id = params[:id]
  #   events = Itinerary.find(id).events
  #   render json: events, status: 200
  # end