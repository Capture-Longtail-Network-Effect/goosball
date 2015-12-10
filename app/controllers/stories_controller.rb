class StoriesController < ApplicationController
    def index
        @stories = Story.all
    end

    def new
        @story = Story.new
    end

    def create
        story = Story.new(story_params)
        if story.save
            flash[:notice] = "Story saved"
            redirect_to action: "index"
        else
            render "new"
        end
    end

    def story_params
        params.require(:story).permit(:story, :pairing_id)
    end
end
