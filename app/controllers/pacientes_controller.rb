class PacientesController < ApplicationController
  before_action :set_paciente, only: [:show, :edit, :update, :destroy]

  # GET /pacientes
  def index
    @pacientes = Paciente.all
  end

  # GET /pacientes/1
  def show
  end

  # GET /pacientes/new
  def new
    @paciente = Paciente.new
  end

  # GET /pacientes/1/edit
  def edit
  end

  # POST /pacientes
  def create
    @paciente = Paciente.new(paciente_params)

    if @paciente.save
      redirect_to pacientes_url, notice: 'Paciente criado com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /pacientes/1
  def update
    if @paciente.update(paciente_params)
      redirect_to pacientes_url, notice: 'Paciente atualizado com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /pacientes/1
  def destroy
    @paciente.destroy
    redirect_to pacientes_url, notice: 'Paciente foi removido.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paciente
      @paciente = Paciente.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def paciente_params
      params.require(:paciente).permit(:nome, :email, :telefone, :data_nascimento, :sexo, :estado_civil, :profissao, :trabalha, :sangue, :fumante, :etilista, :cirurgias, :doencas_paternas, :doencas_maternas, :historico_peso)
    end
end
