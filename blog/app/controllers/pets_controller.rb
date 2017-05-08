class PetsController < ApplicationController
	def new
    @user = User.new(params[:user])
  end
	def create
    @user = User.find(params[:user_id])
    @pet = @user.pets.create(pet_params)
    redirect_to user_path(@user)
  end
 
  private
    def pet_params
      params.require(:pet).permit(:name, :age, :gender, :ptipe, :alive)
    end
end
