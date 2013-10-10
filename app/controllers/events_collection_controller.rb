class EventsCollectionController < ApplicationController
  def index
    @search = Event.search(params[:q])
    @collection = @search.result(distinct: true)
#    @collection = Events.all
  end

  def show
    @collection = Event.find(params[:id])
  end
end
