class PlacesController < ApplicationController
    def index
        @places = Place.all
    end

    def new
        @place = Place.new

    end

    def edit
        @place = Place.find(params[:id])
    end

    def update
        @place = Place.find(params[:id])
        @place.update(place_params)
        redirect_to "/places"
    end

    def create

        @place = Place.new(place_params)
        @place.host_id = current_user.id
        @place.save!
        redirect_to "/places"
    end

    def show
        @place = Place.find(params[:id])
    end

    def destroy
        @place = Place.find(params[:id])
        @place.destroy
        redirect_to "/places"
    end

    private

    def place_params
        params.require(:place).permit(:available, :size, :price, :photo, :description, :location_id, :type_id)
    end


end