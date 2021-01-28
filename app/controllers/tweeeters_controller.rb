class TweeetersController < ApplicationController
  before_action :set_tweeeter, only: %i[ show edit update destroy ]

  # GET /tweeeters or /tweeeters.json
  def index
    @tweeeters = Tweeeter.all
  end

  # GET /tweeeters/1 or /tweeeters/1.json
  def show
  end

  # GET /tweeeters/new
  def new
    @tweeeter = Tweeeter.new
  end

  # GET /tweeeters/1/edit
  def edit
  end

  # POST /tweeeters or /tweeeters.json
  def create
    @tweeeter = Tweeeter.new(tweeeter_params)

    respond_to do |format|
      if @tweeeter.save
        format.html { redirect_to @tweeeter, notice: "Tweeeter was successfully created." }
        format.json { render :show, status: :created, location: @tweeeter }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tweeeter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tweeeters/1 or /tweeeters/1.json
  def update
    respond_to do |format|
      if @tweeeter.update(tweeeter_params)
        format.html { redirect_to @tweeeter, notice: "Tweeeter was successfully updated." }
        format.json { render :show, status: :ok, location: @tweeeter }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tweeeter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweeeters/1 or /tweeeters/1.json
  def destroy
    @tweeeter.destroy
    respond_to do |format|
      format.html { redirect_to tweeeters_url, notice: "Tweeeter was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweeeter
      @tweeeter = Tweeeter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tweeeter_params
      params.require(:tweeeter).permit(:tweeet)
    end
end
