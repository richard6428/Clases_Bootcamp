class ClashesController < ApplicationController
  before_action :set_clash, only: [:show, :edit, :update, :destroy]

  # GET /clashes
  # GET /clashes.json
  def index
    @clashes = Clash.all
  end

  # GET /clashes/1
  # GET /clashes/1.json
  def show
  end

  # GET /clashes/new
  def new
    @clash = Clash.new
  end

  # GET /clashes/1/edit
  def edit
  end

  # POST /clashes
  # POST /clashes.json
  def create
    @clash = Clash.new(clash_params)

    respond_to do |format|
      if @clash.save
        format.html { redirect_to @clash, notice: 'Clash was successfully created.' }
        format.json { render :show, status: :created, location: @clash }
      else
        format.html { render :new }
        format.json { render json: @clash.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clashes/1
  # PATCH/PUT /clashes/1.json
  def update
    respond_to do |format|
      if @clash.update(clash_params)
        format.html { redirect_to @clash, notice: 'Clash was successfully updated.' }
        format.json { render :show, status: :ok, location: @clash }
      else
        format.html { render :edit }
        format.json { render json: @clash.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clashes/1
  # DELETE /clashes/1.json
  def destroy
    @clash.destroy
    respond_to do |format|
      format.html { redirect_to clashes_url, notice: 'Clash was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clash
      @clash = Clash.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clash_params
      params.require(:clash).permit(:match_id, :team_id)
    end
end
