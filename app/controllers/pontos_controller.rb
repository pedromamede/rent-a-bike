class PontosController < ApplicationController
  before_action :set_ponto, only: %i[ show edit update destroy ]

  # GET /pontos or /pontos.json
  def index
    @pontos = Ponto.all
  end

  # GET /pontos/1 or /pontos/1.json
  def show
  end

  # GET /pontos/new
  def new
    @ponto = Ponto.new
  end

  # GET /pontos/1/edit
  def edit
  end

  # POST /pontos or /pontos.json
  def create
    @ponto = Ponto.new(ponto_params)

    respond_to do |format|
      if @ponto.save
        format.html { redirect_to ponto_url(@ponto), notice: "Ponto was successfully created." }
        format.json { render :show, status: :created, location: @ponto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ponto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pontos/1 or /pontos/1.json
  def update
    respond_to do |format|
      if @ponto.update(ponto_params)
        format.html { redirect_to ponto_url(@ponto), notice: "Ponto was successfully updated." }
        format.json { render :show, status: :ok, location: @ponto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ponto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pontos/1 or /pontos/1.json
  def destroy
    @ponto.destroy

    respond_to do |format|
      format.html { redirect_to pontos_url, notice: "Ponto was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ponto
      @ponto = Ponto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ponto_params
      params.require(:ponto).permit(:image_url, :endereco, :horario, :link_maps)
    end
end
