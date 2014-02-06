class CasosController < ApplicationController
  before_action :set_caso, only: [:show, :edit, :update, :destroy]

  # GET /casos
  # GET /casos.json
  def index
    @casos = Caso.all
  end

  # GET /casos/1
  # GET /casos/1.json
  def show
  end

  # GET /casos/new
  def new
    @caso = Caso.new
    @caso.fecha = DateTime.now.strftime('%Y-%m-%d')
    @caso.save
    render action: 'edit'
  end

  def nuevopresponsable
    @presponsable = CasoPresponsable.new
    if !params[:caso_id].nil?
      @presponsable.id_caso = params[:caso_id]
      @presponsable.id_presponsable = 1
      if @presponsable.save
        respond_to do |format|
          format.js { render text: @presponsable.id.to_s }
        end
        return
      end
    end
    respond_to do |format|
      format.html { render inline: 'No' }
    end
  end

  # GET /casos/1/edit
  def edit
  end

  # POST /casos
  # POST /casos.json
  def create
    @caso = Caso.new(caso_params)

    respond_to do |format|
      if @caso.save
        format.html { redirect_to @caso, notice: 'Caso creado con éxito.' }
        format.json { render action: 'show', status: :created, location: @caso }
      else
        format.html { render action: 'new' }
        format.json { render json: @caso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /casos/1
  # PATCH/PUT /casos/1.json
  def update
    respond_to do |format|
      if @caso.update_attributes(caso_params)
        format.html { redirect_to @caso, notice: 'Caso was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @caso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /casos/1
  # DELETE /casos/1.json
  def destroy
    @caso.destroy
    respond_to do |format|
      format.html { redirect_to casos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caso
      @caso = Caso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caso_params
      params.require(:caso).permit(:fecha, :titulo,
        :caso_presponsable_attributes => [
          :id, :id_presponsable, :otro, :_destroy
        ]
      )
    end
end
