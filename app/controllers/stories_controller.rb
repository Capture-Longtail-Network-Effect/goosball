class StoriesController < ApplicationController
    def index
        @stories = Story.all
    end

    def new
        if params.has_key? :id
          @pairing_id = params[:id]
        end
        @story = Story.new
    end

    def create
        story = Story.new(story_params)
        if story.save
            flash[:notice] = "Story saved"
            redirect_to url_for(:controller => "pairings", :action => "index")
        else
            render "new"
        end
    end

    def edit
        @story = Story.find(params[:id])
    end

    def update
        @story = Story.find(params[:id])
        if @story.update(story_params)
            flash[:notice] = "Story updated"
            redirect_to url_for(:controller => "pairings", :action => "index")
        else
            render 'edit'
        end
    end

    def story_params
        params.require(:story).permit(:story, :pairing_id)
    end
end
