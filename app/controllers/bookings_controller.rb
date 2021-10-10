class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:offer_id])
  end

  def new
        @offer = Offer.find(params[:offer_id])
        @user = User.find(params[:user_id])
        @booking = Booking.new
    end
    
      def create
        @booking = Booking.new(booking_params)
        @offer = Offer.find(params[:offer_id])
        @user = User.find(params[:user_id])
        @booking.list = @list
        @booking.user = @user
        if @booking.save
          redirect_to list_path(@offer)
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
        params.require(:booking).permit(:date, :price, :from_hour, :to_hour)
      end
    
end
