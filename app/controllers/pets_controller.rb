class PetsController < ApplicationController
  def index
  end

  def show
    @pet = Pet.find(params[:id])
    authorize @pet
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
