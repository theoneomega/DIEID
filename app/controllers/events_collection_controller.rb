class EventsCollectionController < ApplicationController
  def index
    @collection = Event.all
  end

  def show
    @collection = Event.find(params[:id])
  end
end
