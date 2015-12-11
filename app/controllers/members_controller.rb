class MembersController < ApplicationController
    def index
      @members = Member.all
    end

    def new
      @member = Member.new
    end

    def create
      @member = Member.new(members_params)
      if @member.save
        flash[:notice] = 'New member saved'
        redirect_to url_for action: 'index'
      else
        render 'new'
      end
    end

    def edit
      @member = Member.find(params[:id])
    end

    private 
    def members_params
      params.require(:member).permit(:name, :role, :email, :github)
    end  
end
