class PairingsController < ApplicationController
	def index
		@pairings = Pairing.all
	end

	def new
		@pairing = Pairing.new
	end

	def create
		@pairing = Pairing.new(pairing_params)
		if @pairing.save
			flash[:notice] = "Pairins created"
			redirect_to pairins_path
		else
			render 'new'
		end
	end

end
