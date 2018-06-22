class PlaceUsersController < ApplicationController

    def create

       place_user = PlaceUser.new(place_user_params)
       #booking = Booking.new(booking_params)
       place_user.place_id = params[:place_id]
       #booking.place_id = params[:place_id]
       place_user.user_id = current_user.id
       #booking.user_id = current_user.id
       place_user.save!
       #booking.save
       redirect_to "/places"
       
 
    end

    def availability
         @place.where("date >= ? AND date <= ?", date_start, date_end)

    end

    private


    def place_user_params
        params.require(:place_user).permit(:date_start, :date_end)
    end

end