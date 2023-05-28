class AlugueisController < ApplicationController
  before_action :set_aluguel, only: %i[ show edit update destroy ]

  # GET /alugueis or /alugueis.json
  def index
    @alugueis = Aluguel.all
  end

  # GET /alugueis/1 or /alugueis/1.json
  def show
  end

  # GET /alugueis/new
  def new
    @aluguel = Aluguel.new
  end

  # GET /alugueis/1/edit
  def edit
  end

  # POST /alugueis or /alugueis.json
  def create
    @aluguel = Aluguel.new(aluguel_params)

    respond_to do |format|
      if @aluguel.save
        format.html { redirect_to aluguel_url(@aluguel), notice: "Aluguel was successfully created." }
        format.json { render :show, status: :created, location: @aluguel }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aluguel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alugueis/1 or /alugueis/1.json
  def update
    respond_to do |format|
      if @aluguel.update(aluguel_params)
        format.html { redirect_to aluguel_url(@aluguel), notice: "Aluguel was successfully updated." }
        format.json { render :show, status: :ok, location: @aluguel }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aluguel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alugueis/1 or /alugueis/1.json
  def destroy
    @aluguel.destroy

    respond_to do |format|
      format.html { redirect_to alugueis_url, notice: "Aluguel was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aluguel
      @aluguel = Aluguel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aluguel_params
      params.require(:aluguel).permit(:bike_id, :ponto_id, :hora_retirada, :hora_devolucao, :forma_pagamento)
    end
end
