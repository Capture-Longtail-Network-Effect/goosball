class PairingsController < ApplicationController
	def index
        @matrix = []
        Pairing.order('date desc').each do |pairing|
            member1_name = Member.find(pairing.members_ids[0]).name
            member2_name = Member.find(pairing.members_ids[1]).name
            pairing_story = Story.where('pairing_id = ?', pairing.id).first
            detail = {
                id: pairing.id,
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
		
        @pairing.date = Date.strptime(pairing_params[:date], "%d-%m-%Y")
		@pairing.members_ids = [member_1, member_2]
		if @pairing.save
			flash[:notice] = "Pairins created"
			redirect_to pairings_path
		else
			render 'new'
		end
	end

  def builder
    @pairing = Pairing.new
  end

  def build_pairings
    members_1 = params[:member_1]
    members_2 = params[:member_2]
    dates = params[:date]
    stories = params[:story]
    counter = 0

    #Story.delete_all
    #Pairing.delete_all

    members_1.each do |member_1|
      pairing = Pairing.new
      pairing.members_ids = [member_1, members_2[counter]]
      pairing.date = dates[counter]
      pairing.save
      story = Story.new
      story.story = stories[counter]
      story.pairing = pairing
      story.save
      counter +=1
    end

    redirect_to pairings_path
  end

	private
	def pairing_params
		params.require(:pairing).permit(:date, :member_1, :member_2)
	end


end
