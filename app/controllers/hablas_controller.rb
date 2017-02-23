class HablasController < ApplicationController
  before_action :set_habla, only: [:show, :edit, :update, :destroy]

  # GET /hablas
  # GET /hablas.json
  def index
    @hablas = Habla.all
  end

  # GET /hablas/1
  # GET /hablas/1.json
  def show
  end

  # GET /hablas/new
  def new
    @habla = Habla.new
  end

  # GET /hablas/1/edit
  def edit
  end

  # POST /hablas
  # POST /hablas.json
  def create
    @habla = Habla.new(habla_params)

    respond_to do |format|
      if @habla.save
        format.html { redirect_to @habla, notice: 'Habla was successfully created.' }
        format.json { render :show, status: :created, location: @habla }
      else
        format.html { render :new }
        format.json { render json: @habla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hablas/1
  # PATCH/PUT /hablas/1.json
  def update
    respond_to do |format|
      if @habla.update(habla_params)
        format.html { redirect_to @habla, notice: 'Habla was successfully updated.' }
        format.json { render :show, status: :ok, location: @habla }
      else
        format.html { render :edit }
        format.json { render json: @habla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hablas/1
  # DELETE /hablas/1.json
  def destroy
    @habla.destroy
    respond_to do |format|
      format.html { redirect_to hablas_url, notice: 'Habla was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_habla
      @habla = Habla.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def habla_params
      params.require(:habla).permit(:dictate)
    end
end
