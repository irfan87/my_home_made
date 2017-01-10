class Api::V1::MenusController < ApplicationController
	before_action :get_user_params

	def index
		@menus = @cooker.menus.all

		render json: @menus
	end

	def create
		@menu = @cooker.menus.create(menu_params)

		render json: @menu
	end

	def show
		@menu = @cooker.menus.find(params[:id])

		render json: @menu
	end

	def update
		@menu = @cooker.menus.find(params[:id])
		@menu.update(menu_params)

		render json: @menu
	end

	def destroy
		@menu = @cooker.menus.destroy(params[:id])
	end

	private

	def get_user_params
		@cooker = Cooker.find(params[:cooker_id])
	end

	def menu_params
		params.require(:menu).permit(:menu_title, :menu_descriptions)
	end
end
