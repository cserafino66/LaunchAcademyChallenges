class CampersController < ApplicationController

  def index
    if params[:campsite_id]
      @campsite = Campsite.find(param[:campsite_id])
      @title = "Campers Bunking in #{@campsite.name}"
      @campers = @campsite.campers
    else
      @title = "All Campers:"
      @campers = Camper.all
    end
  end
end
