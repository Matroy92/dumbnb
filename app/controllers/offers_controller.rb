class OffersController < ApplicationController
    def index
        @offer = Offer.all
        @offer = Offer.where.not(latitude: nil, longitude: nil)
        @markers = @offer.map do |offer|
          { lat: offer.latitude, lng: offer.longitude}
        end
    end
    
      def show
        @offer = Offer.find(params[:id])
      end
    
      def new
        @offer = Offer.new
      end
    
      def create
        @offer = Offer.new(offer_params)
        @user = current_user
        @offer.user = @user
        if @offer.save
          redirect_to offers_path
        else
          render :new
        end
      end
    
      def edit
        @offer = Offer.find(params[:id])
      end
    
      def update
        @offer = Offer.find(params[:id])
        @offer.update(offer_params)
        redirect_to task_path(@offer)
      end
    
      def destroy
        @offer = Offer.find(params[:id])
        @offer.destroy
        redirect_to offers_path
      end
    
      private
    
      def offer_params
        params.require(:offer).permit(:description, :hour_rate, :availability_start_date, :availability_end_date,
        :availability_start_hour, :availability_end_hour, :country, :city, :radius, :address, :small_description)
      end
end
