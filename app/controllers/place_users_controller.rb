class PlaceUsersController < ApplicationController

    def create
       
       place_user = PlaceUser.new(place_user_params)
       #booking = Booking.new(booking_params)
       place_user.place_id = params[:place_id]
       #booking.place_id = params[:place_id]
       if current_user.nil?
         redirect_to "/users/sign_in"
       else 
         place_user.user_id = current_user.id
         if available?
            #booking.user_id = current_user.id       
            place_user.save!
            #booking.save
          end
          redirect_to "/places"
        end
       
 
    end

    def available?
         PlaceUser.where(place_id: params[:place_id]).where("? BETWEEN 
          date_start AND date_end OR 
          ? BETWEEN date_start AND date_end", place_user_params[:date_start], 
          place_user_params[:date_end]).none?

    end

    private


    def place_user_params
        params.require(:place_user).permit(:date_start, :date_end)
    end

end