class Api::V1::CookersController < ApplicationController
	def index
		@cookers = Cooker.all

		render json: @cookers
	end

	def new
		@cooker = Cooker.new
	end

	def create
		@cooker = Cooker.new(cooker_params)

		render json: @cooker
	end

	def show
		@cooker = Cooker.find(params[:id])
		render json: @cooker
	end

	private

	def cooker_params
		params.require(:cooker).permit(:cooker_name, :cooker_email_address, :cooker_home_address, :cooker_phone_number, :cooker_other_phone_number)
	end
end
