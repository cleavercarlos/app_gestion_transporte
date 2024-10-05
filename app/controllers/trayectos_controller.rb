class TrayectosController < ApplicationController
  before_action :set_trayecto, only: %i[ show edit update destroy ]

  # GET /trayectos or /trayectos.json
  def index
    @trayectos = Trayecto.all
  end

  # GET /trayectos/1 or /trayectos/1.json
  def show
  end

  # GET /trayectos/new
  def new
    @trayecto = Trayecto.new
  end

  # GET /trayectos/1/edit
  def edit
  end

  # POST /trayectos or /trayectos.json
  def create
    @trayecto = Trayecto.new(trayecto_params)

    respond_to do |format|
      if @trayecto.save
        format.html { redirect_to @trayecto, notice: "Trayecto was successfully created." }
        format.json { render :show, status: :created, location: @trayecto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trayecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trayectos/1 or /trayectos/1.json
  def update
    respond_to do |format|
      if @trayecto.update(trayecto_params)
        format.html { redirect_to @trayecto, notice: "Trayecto was successfully updated." }
        format.json { render :show, status: :ok, location: @trayecto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trayecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trayectos/1 or /trayectos/1.json
  def destroy
    @trayecto.destroy!

    respond_to do |format|
      format.html { redirect_to trayectos_path, status: :see_other, notice: "Trayecto was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trayecto
      @trayecto = Trayecto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trayecto_params
      params.require(:trayecto).permit(:descripcion, :tipo_carga_id, :destino, :fecha_salida, :fecha_llegada, :vehiculo_id, :user_id)
    end
end
