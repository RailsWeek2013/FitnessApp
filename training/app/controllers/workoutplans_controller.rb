class WorkoutplansController < ApplicationController
  before_filter :authenticate_user!
  protect_from_forgery with: :exception

  def index
  	@uebungs = current_user.uebungs.all
  end

  def show
    set_uebung
  end

  # GET /uebungs/new
  def new
    @uebung = Uebung.new
  end

  # GET /uebungs/1/edit
  def edit
    set_uebung
  end

  # POST /uebungs
  # POST /uebungs.json
  def create
    @uebung = current_user.uebungs.new(uebung_params)

    respond_to do |format|
      if @uebung.save
        format.html { redirect_to @uebung, notice: 'Uebung was successfully created.' }
        format.json { render action: 'show', status: :created, location: @uebung }
      else
        format.html { render action: 'new' }
        format.json { render json: @uebung.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uebungs/1
  # PATCH/PUT /uebungs/1.json
  def update
    respond_to do |format|
      if @uebung.update(uebung_params)
        format.html { redirect_to @uebung, notice: 'Uebung was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @uebung.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uebungs/1
  # DELETE /uebungs/1.json
  def destroy
    @uebung.destroy
    respond_to do |format|
      format.html { redirect_to uebungs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uebung
      @uebung = current_user.uebungs.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uebung_params
      params.require(:uebung).permit(:uebung, :trainingsart, :anzset, :anzwdh, :beschreibung)
    end

end

