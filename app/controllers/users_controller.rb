class UserController < ApplicationController
  before_action :authenticate_user!

  # def members_only
  #   render json: {
  #     data: {
  #       message: "Welcome #{current_user.email}",
  #       user: current_user
  #     }
  #   }, status: 200
  # end

  # PATCH/PUT /sitters/1
  # def update
  #   if @user.update(user_update_params)
  #     render json: @user
  #   else
  #     render json: @user.errors, status: :unprocessable_entity
  #   end
  # end
  #
  # private
  #
  #   # Only allow a trusted parameter "white list" through.
  #   def user_update_params
  #   #   params.fetch(:pet, {})
  #     params.require(:user).permit(:firstname, :lastname, :phone1)
  #   end
end
