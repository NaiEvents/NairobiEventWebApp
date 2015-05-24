class NaieventsController < ApplicationController
  before_action :set_naievent, only: [:show, :edit, :update, :destroy]

  # GET /naievents
  # GET /naievents.json
  def index
    @naievents = Naievent.all
  end

  # GET /naievents/1
  # GET /naievents/1.json
  def show
  end

  # GET /naievents/new
  def new
    @naievent = Naievent.new
  end

  # GET /naievents/1/edit
  def edit
  end

  # POST /naievents
  # POST /naievents.json
  def create
    @naievent = Naievent.new(naievent_params)

    respond_to do |format|
      if @naievent.save
        format.html { redirect_to @naievent, notice: 'Naievent was successfully created.' }
        format.json { render :show, status: :created, location: @naievent }
      else
        format.html { render :new }
        format.json { render json: @naievent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /naievents/1
  # PATCH/PUT /naievents/1.json
  def update
    respond_to do |format|
      if @naievent.update(naievent_params)
        format.html { redirect_to @naievent, notice: 'Naievent was successfully updated.' }
        format.json { render :show, status: :ok, location: @naievent }
      else
        format.html { render :edit }
        format.json { render json: @naievent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /naievents/1
  # DELETE /naievents/1.json
  def destroy
    @naievent.destroy
    respond_to do |format|
      format.html { redirect_to naievents_url, notice: 'Naievent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_naievent
      @naievent = Naievent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def naievent_params
      params.require(:naievent).permit(:title, :location, :date)
    end
end
