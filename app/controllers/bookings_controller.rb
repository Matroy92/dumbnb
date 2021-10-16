class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def new
        @offer = Offer.find(params[:offer_id])
        @user = current_user
        @booking = Booking.new
    end
    
      def create
        @booking = Booking.new(booking_params)
        @offer = Offer.find(params[:offer_id])
        @user = current_user
        @booking.offer = @offer
        @booking.user = @user
        if @booking.save
          redirect_to offer_booking_path(@offer, @booking)
        else
          render :new
        end
      end
    
      def destroy
        @booking = Booking.find(params[:id])
        @booking.destroy
        redirect_to list_path(@booking.offer)
      end

      private
    
      def booking_params
        params.require(:booking).permit(:date, :small_description)
      end
    
end
