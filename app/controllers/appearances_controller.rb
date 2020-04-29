class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
    end
    
    def create
        @appearance = Appearance.new(appearance_params)
        @appearance.save
        redirect_to episode_path(@appearance.episode)
    end

    private

    def appearance_params
        params.require(:appearance).permit(:numeric_rating, :guest_id, :episode_id)
    end 
    
end
