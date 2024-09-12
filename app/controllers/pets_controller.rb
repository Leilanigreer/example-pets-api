class PetsController < ApplicationController
  def index
    @pets = Pet.all
    pp current_user
    render :index
  end

  def create
    pp "THIS IS THE CURRENT USER"
    pp current_user
    pp "THAT WAS THE CURRENT USER"
    if current_user != nil
      pet = Pet.new(
        name: params[:name],
        age: params[:age],
        breed: params[:breed],
        )
      if pet.save
        render json: { message: "Pet created successfully" }, status: :created
      else
        render json: { errors: user.errors.full_messages }, status: :bad_request
      end
    else
        render json: { message: "You must be logged in to create a pet" }
    end
  end
end
