class ItinerariesController < ApplicationController
  before_action :set_itinerary, only: [:show, :update, :destroy]

  def index
    @itineraries = Itinerary.all
    render json: @itineraries
  end

  def show
    @itinerary = Itineray.find(params[:id])
    render json: @itinerary
  end

  def create
    @itinerary = Itinerary.new(itinerary_params)
    if @itinerary.save
      @events = Event.seed_itinerary_with_events(itinerary_params)
      render json: @itinerary, status: :created, location: @itinerary
      render json: @events, status: :created, location: @events
    else
      render json: @itinerary.errors, status: :unprocessable_entity
    end      
  end

  def destroy
    @itinerary.destroy
    head :no_content
  end

  private
  
    def itinerary_params
      params.require(:itinerary).permit(:name, :date)
    end

    def set_itinerary
      @itinerary = Itinerary.find(params[:id])
    end

end
