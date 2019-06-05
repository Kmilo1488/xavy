class VenuesController < ApplicationController
  def index
    @search = params["search"]
    @venues = if @search.present?
                @name = @search["name"]
                Venue.where("name ILIKE ?", "%#{@name}%")
              else
                Venue.all
              end
  end

  def show
    @venue = Venue.find params[:id]
  end
end
