class CadastroTrabalhosController < ApplicationController
  before_action :set_cadastro_trabalho, only: [:show, :edit, :update, :destroy]

  # GET /cadastro_trabalhos
  # GET /cadastro_trabalhos.json
  def index
    @cadastro_trabalhos = CadastroTrabalho.all
  end

  # GET /cadastro_trabalhos/1
  # GET /cadastro_trabalhos/1.json
  def show
  end

  # GET /cadastro_trabalhos/new
  def new
    @cadastro_trabalho = CadastroTrabalho.new
  end

  # GET /cadastro_trabalhos/1/edit
  def edit
  end

  # POST /cadastro_trabalhos
  # POST /cadastro_trabalhos.json
  def create
    @cadastro_trabalho = CadastroTrabalho.new(cadastro_trabalho_params)

    respond_to do |format|
      if @cadastro_trabalho.save
        format.html { redirect_to @cadastro_trabalho, notice: 'Cadastro trabalho was successfully created.' }
        format.json { render :show, status: :created, location: @cadastro_trabalho }
      else
        format.html { render :new }
        format.json { render json: @cadastro_trabalho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cadastro_trabalhos/1
  # PATCH/PUT /cadastro_trabalhos/1.json
  def update
    respond_to do |format|
      if @cadastro_trabalho.update(cadastro_trabalho_params)
        format.html { redirect_to @cadastro_trabalho, notice: 'Cadastro trabalho was successfully updated.' }
        format.json { render :show, status: :ok, location: @cadastro_trabalho }
      else
        format.html { render :edit }
        format.json { render json: @cadastro_trabalho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cadastro_trabalhos/1
  # DELETE /cadastro_trabalhos/1.json
  def destroy
    @cadastro_trabalho.destroy
    respond_to do |format|
      format.html { redirect_to cadastro_trabalhos_url, notice: 'Cadastro trabalho was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadastro_trabalho
      @cadastro_trabalho = CadastroTrabalho.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cadastro_trabalho_params
      params.require(:cadastro_trabalho).permit(:titulo, :nome, :data, :arquivo)
    end
end
