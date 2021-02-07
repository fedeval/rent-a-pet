class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @pets = policy_scope(Pet)

    @markers = @pets.geocoded.map do |pet|
      {
        lat: pet.latitude,
        lng: pet.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { pet: pet })
      }
    end
  end

  def show
    @pet = Pet.find(params[:id])
    @booking = Booking.new
    authorize @pet
  end

  def new
    @pet = Pet.new

    authorize @pet
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    if @pet.save!
      redirect_to pet_path(@pet)
    else
      render :new
    end
    authorize @pet
  end

  def edit
  end

  def update
  end

  def destroy
    @pet = Pet.find(params[:id])
    authorize @pet
    @pet.destroy
    redirect_to dashboard_index_path(view: 'pets')
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :species, :age,
                                :description, :price_per_day, :location,
                                :available, :photo)
  end
end
