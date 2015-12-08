class PairingsController < ApplicationController
	def index
		@pairings = Pairing.all
	end

	def new
		@pairing = Pairing.new
	end

	def create
		@pairing = Pairing.new
		@pairing.date = Date.new pairing_params["date(1i)"].to_i, 
														 pairing_params["date(2i)"].to_i, 
														 pairing_params["date(3i)"].to_i
		@pairing.members_ids = [pairing_params[:member_1], pairing_params[:member_2]]
		if @pairing.save
			flash[:notice] = "Pairins created"
			redirect_to pairings_path
		else
			render 'new'
		end
	end

	private
	def pairing_params
		params.require(:pairing).permit(:date, :member_1, :member_2)
	end


end
