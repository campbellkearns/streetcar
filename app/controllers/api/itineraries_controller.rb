class Api::ItinerariesController < ApplicationController
  before_action :check_permission
  before_action :set_itinerary, only: [:show, :update, :destroy]

  # GET /itineraries
  # GET /itineraries.json
  def index
    @itineraries = current_user.itineraries
    render json: @itineraries
  end

  # GET /itineraries/1
  # GET /itineraries/1.json
  def show
    @itinerary = current_user.itineraries.find(params[:id])
    render json: @itinerary
  end

  # POST /itineraries
  # POST /itineraries.json
  def create
    itinerary = current_user.itineraries.create!(itinerary_params)
    itinerary_id = current_user.itineraries.last
    
    events = params[:events]
    events.each do |event|
      itinerary_id = current_user.itineraries.last[:id]
      EventsItinerary.create(itinerary_id: itinerary_id, event_id: event["id"])
    end
    render json: itinerary, status: 201 # , location: [:api, itineraries]
  end

  # PATCH/PUT /itineraries/1
  # PATCH/PUT /itineraries/1.json
  def update
    @itinerary = Itinerary.find(params[:id])

    if @itinerary.update(itinerary_params)
      head :no_content
    else
      render json: @itinerary.errors, status: :unprocessable_entity
    end
  end

  # DELETE /itineraries/1
  # DELETE /itineraries/1.json
  def destroy
    @itinerary.destroy

    head :no_content
  end

  private

    def set_itinerary
      @itinerary = Itinerary.find(params[:id])
    end

    def itinerary_params
      params.require(:itinerary).permit(:name, :date)
    end

    def check_permission
        render json: { error: "Permission Denied" }, status: :unauthorized unless current_user
    end
end
