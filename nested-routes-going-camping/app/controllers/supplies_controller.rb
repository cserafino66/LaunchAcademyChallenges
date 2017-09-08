class SuppliesController < ApplicationController
  def index
    if params[:camper_id]
      @campsite = Campsite.find(params[:campsite_id])
      @title = "Supplies Brought by #{@camper_id}"
      @supplies = @camper.supplies
    else
      @title = "All Supplies:"
      @supplies = Supply.all
    end
  end
end
