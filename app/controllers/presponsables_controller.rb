class PresponsablesController < ApplicationController
  before_action :set_presponsable, only: [:show, :edit, :update, :destroy]

  # GET /presponsables
  # GET /presponsables.json
  def index
    @presponsables = Presponsable.all
  end

  # GET /presponsables/1
  # GET /presponsables/1.json
  def show
  end

  # GET /presponsables/new
  def new
    @presponsable = Presponsable.new
  end

  # GET /presponsables/1/edit
  def edit
  end

  # POST /presponsables
  # POST /presponsables.json
  def create
    @presponsable = Presponsable.new(presponsable_params)

    respond_to do |format|
      if @presponsable.save
        format.html { redirect_to @presponsable, notice: 'Presponsable was successfully created.' }
        format.json { render action: 'show', status: :created, location: @presponsable }
      else
        format.html { render action: 'new' }
        format.json { render json: @presponsable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presponsables/1
  # PATCH/PUT /presponsables/1.json
  def update
    respond_to do |format|
      if @presponsable.update(presponsable_params)
        format.html { redirect_to @presponsable, notice: 'Presponsable was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @presponsable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presponsables/1
  # DELETE /presponsables/1.json
  def destroy
    @presponsable.destroy
    respond_to do |format|
      format.html { redirect_to presponsables_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_presponsable
      @presponsable = Presponsable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def presponsable_params
      params.require(:presponsable).permit(:nombre)
    end
end
