class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def create
    @pet = Pet.find(params[:pet_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.pet = @pet
    daily_price = @booking.pet.price_per_day
    @booking.price = (@booking.end_date - @booking.start_date) * daily_price
    if @booking.save
      redirect_to pet_path(@pet)
    else
      render :new
    end
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
