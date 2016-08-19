class UvasController < ApplicationController
  before_action :set_uva, only: [:show, :edit, :update, :destroy]

  # GET /uvas
  # GET /uvas.json
  def index
    @uvas = Uva.all
  end

  # GET /uvas/1
  # GET /uvas/1.json
  def show
  end

  # GET /uvas/new
  def new
    @uva = Uva.new
  end

  # GET /uvas/1/edit
  def edit
  end

  # POST /uvas
  # POST /uvas.json
  def create
    @uva = Uva.new(uva_params)

    respond_to do |format|
      if @uva.save
        format.html { redirect_to @uva, notice: 'Uva was successfully created.' }
        format.json { render :show, status: :created, location: @uva }
      else
        format.html { render :new }
        format.json { render json: @uva.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uvas/1
  # PATCH/PUT /uvas/1.json
  def update
    respond_to do |format|
      if @uva.update(uva_params)
        format.html { redirect_to @uva, notice: 'Uva was successfully updated.' }
        format.json { render :show, status: :ok, location: @uva }
      else
        format.html { render :edit }
        format.json { render json: @uva.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uvas/1
  # DELETE /uvas/1.json
  def destroy
    @uva.destroy
    respond_to do |format|
      format.html { redirect_to uvas_url, notice: 'Uva was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uva
      @uva = Uva.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uva_params
      params.require(:uva).permit(:nameUva, :address, :commune, :phone, :manager, :email)
    end
end
