class BoutsController < ApplicationController
  before_action :set_bout, only: [:show, :edit, :update, :destroy]

  # GET /bouts
  # GET /bouts.json
  def index
    @bouts = Bout.all
  end

  # GET /bouts/1
  # GET /bouts/1.json
  def show
  end

  # GET /bouts/new
  def new
    @bout = Bout.new
  end

  # GET /bouts/1/edit
  def edit
  end

  # POST /bouts
  # POST /bouts.json
  def create
    @bout = Bout.new(bout_params)

    respond_to do |format|
      if @bout.save
        format.html { redirect_to @bout, notice: 'Bout was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bout }
      else
        format.html { render action: 'new' }
        format.json { render json: @bout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bouts/1
  # PATCH/PUT /bouts/1.json
  def update
    respond_to do |format|
      if @bout.update(bout_params)
        format.html { redirect_to @bout, notice: 'Bout was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bouts/1
  # DELETE /bouts/1.json
  def destroy
    @bout.destroy
    respond_to do |format|
      format.html { redirect_to bouts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bout
      @bout = Bout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bout_params
      params.require(:bout).permit(:referee_id, :league_id, :bout_date)
    end
end
