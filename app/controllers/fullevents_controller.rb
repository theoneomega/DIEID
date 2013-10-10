class FulleventsController < ApplicationController
  # GET /fullevents
  # GET /fullevents.json
  def index
    @search = Fullevent.search(params[:q])
    @fullevents = @search.result(distinct: true)
#    @search.build_condition if @search.conditions.empty?
#    @search.build_sort if @search.sorts.empty?
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fullevents }
    end
  end
  
  def search
    index
    render :index
  end

  # GET /fullevents/1
  # GET /fullevents/1.json
  def show
    @fullevent = Fullevent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fullevent }
    end
  end
  #
  #  # GET /fullevents/new
  #  # GET /fullevents/new.json
  #  def new
  #    @fullevent = Fullevent.new
  #
  #    respond_to do |format|
  #      format.html # new.html.erb
  #      format.json { render json: @fullevent }
  #    end
  #  end
  #
  #  # GET /fullevents/1/edit
  #  def edit
  #    @fullevent = Fullevent.find(params[:id])
  #  end
  #
  #  # POST /fullevents
  #  # POST /fullevents.json
  #  def create
  #    @fullevent = Fullevent.new(params[:fullevent])
  #
  #    respond_to do |format|
  #      if @fullevent.save
  #        format.html { redirect_to @fullevent, notice: 'Fullevent was successfully created.' }
  #        format.json { render json: @fullevent, status: :created, location: @fullevent }
  #      else
  #        format.html { render action: "new" }
  #        format.json { render json: @fullevent.errors, status: :unprocessable_entity }
  #      end
  #    end
  #  end
  #
  #  # PUT /fullevents/1
  #  # PUT /fullevents/1.json
  #  def update
  #    @fullevent = Fullevent.find(params[:id])
  #
  #    respond_to do |format|
  #      if @fullevent.update_attributes(params[:fullevent])
  #        format.html { redirect_to @fullevent, notice: 'Fullevent was successfully updated.' }
  #        format.json { head :no_content }
  #      else
  #        format.html { render action: "edit" }
  #        format.json { render json: @fullevent.errors, status: :unprocessable_entity }
  #      end
  #    end
  #  end
  #
  #  # DELETE /fullevents/1
  #  # DELETE /fullevents/1.json
  #  def destroy
  #    @fullevent = Fullevent.find(params[:id])
  #    @fullevent.destroy
  #
  #    respond_to do |format|
  #      format.html { redirect_to fullevents_url }
  #      format.json { head :no_content }
  #    end
  #  end
end
