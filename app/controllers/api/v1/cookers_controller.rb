class Api::V1::CookersController < ApplicationController
	# respond_to? :json

	def index
		@cookers = Cooker.all

		render json: @cookers
	end

	def create
		@cooker = Cooker.create(cooker_params)

		render json: @cooker, location: url_for([:api, :v1, @cooker])
	end

	def show
		@cooker = Cooker.find(params[:id])
		render json: @cooker
	end

	def update
		@cooker = Cooker.find(params[:id])
		@cooker.update_attributes(cooker_params)

		render json: @cooker
	end

	def destroy
		@cooker = Cooker.find(params[:id])
		@cooker.destroy

		render json: @cooker
	end

	private

	def cooker_params
		params.require(:cooker).permit(:cooker_name, :cooker_email_address, :cooker_home_address, :cooker_phone_number, :cooker_other_phone_number)
	end
end
