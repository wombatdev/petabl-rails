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
      params.require(:pet).permit(:user_id, :owner_phone, :owner_address, :species, :name, :weight, :breed, :age_years, :age_months, :sex, :spayed, :housetrained, :housetrained_info, :chipped, :otherdogs, :otherdogs_info, :othercats, :othercats_info, :children, :children_info, :shed, :shed_info, :hypoallergenic, :hypoallergenic_info, :noise, :noise_info, :aggression, :aggression_info, :specialcare, :vet, :about, :instructions)
    end
end
