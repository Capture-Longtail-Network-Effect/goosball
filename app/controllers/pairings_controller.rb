class PairingsController < ApplicationController
	def index
        @matrix = []
        Pairing.all.each do |pairing|
            member1_name = Member.find(pairing.members_ids[0]).name
            member2_name = Member.find(pairing.members_ids[1]).name
            pairing_story = Story.where('pairing_id = ?', pairing.id).first
            detail = {
                member1: member1_name, 
                member2: member2_name, 
                date: pairing.date,
            }
            if pairing_story
                detail[:story] = pairing_story.story
                detail[:story_id] = pairing_story.id
            end

            @matrix << detail
        end
	end

    def chart
        @members = Member.order('id asc')
        @pairings = Pairing.group(:members_ids).order('count_members_ids').count(:members_ids)
    end

	def new
		@pairing = Pairing.new
	end

	def create
		@pairing = Pairing.new

        member_1 = pairing_params[:member_1]
        member_2 = pairing_params[:member_2]
        
        #swap if member 2 is greater than member2
        if member_2 > member_1 
            member_1,member_2 = member_2, member_1
        end
		
        @pairing.date = Date.new pairing_params["date(1i)"].to_i, 
														 pairing_params["date(2i)"].to_i, 
														 pairing_params["date(3i)"].to_i
		@pairing.members_ids = [member_1, member_2]
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
