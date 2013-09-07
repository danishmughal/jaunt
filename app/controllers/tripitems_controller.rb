class TripitemsController < ApplicationController
  before_action :set_tripitem, only: [:show, :edit, :update, :destroy]

  # GET /tripitems
  # GET /tripitems.json
  def index
    @tripitems = Tripitem.all
  end

  # GET /tripitems/1
  # GET /tripitems/1.json
  def show
  end

  # GET /tripitems/new
  def new
    @tripitem = Tripitem.new
  end

  # GET /tripitems/1/edit
  def edit
  end

  # POST /tripitems
  # POST /tripitems.json
  def create
    @tripitem = Tripitem.new(tripitem_params)

    respond_to do |format|
      if @tripitem.save
        format.html { redirect_to @tripitem, notice: 'Tripitem was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tripitem }
      else
        format.html { render action: 'new' }
        format.json { render json: @tripitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tripitems/1
  # PATCH/PUT /tripitems/1.json
  def update
    respond_to do |format|
      if @tripitem.update(tripitem_params)
        format.html { redirect_to @tripitem, notice: 'Tripitem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tripitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tripitems/1
  # DELETE /tripitems/1.json
  def destroy
    @tripitem.destroy
    respond_to do |format|
      format.html { redirect_to tripitems_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tripitem
      @tripitem = Tripitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tripitem_params
      params.require(:tripitem).permit(:trip_id, :description, :location, :start_time, :end_time)
    end
end
