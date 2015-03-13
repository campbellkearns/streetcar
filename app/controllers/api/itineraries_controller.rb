class Api::ItinerariesController < ApplicationController
  before_action :check_permission
  before_action :set_itinerary, only: [:show, :update, :destroy]

  # GET /itineraries
  # GET /itineraries.json
  def index
    @itineraries = Itinerary.all

    render json: @itineraries
  end

  # GET /itineraries/1
  # GET /itineraries/1.json
  def show
    render json: @itinerary
  end

  # POST /itineraries
  # POST /itineraries.json
  def create
    @itinerary = Itinerary.new(itinerary_params)

    if @itinerary.save
      render json: @itinerary, status: :created, location: @itinerary
    else
      render json: @itinerary.errors, status: :unprocessable_entity
    end
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
      params[:itinerary]
    end

    def check_permission
        render json: { error: "Permission Denied" }, status: :unauthorized unless current_user
    end
end
