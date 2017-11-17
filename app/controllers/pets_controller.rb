class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :update, :destroy]

  # GET /pets
  def index
    @pets = Pet.all

    render json: @pets
  end

  # GET /pets/1
  def show
    render json: @pet
  end

  # POST /pets
  def create
    @pet = Pet.new(pet_params)

    if @pet.save
      render json: @pet, status: :created, location: @pet
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pets/1
  def update
    if @pet.update(pet_params)
      render json: @pet
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pets/1
  def destroy
    @pet.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet
      @pet = Pet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pet_params
    #   params.fetch(:pet, {})
      params.require(:pet).permit(:owner_email, :owner_firstname, :owner_lastname, :owner_school, :owner_phone, :owner_address, :owner_facebook, :owner_linkedin, :venmo, :name, :species, :breed, :description, :age, :weight, :shed, :housetrained, :hypoallergenic, :noise, :spayed, :aggression, :otherpets, :children, :shots, :specialcare, :vet_name, :vet_phone, :owner_insurance, :additional)
    end
end
