class TraininglistsController < ApplicationController
	before_filter :authenticate_user!
  

  def index
  	@traininglists = current_user.traininglists.all
    @exercises = Exercise.all
  end

  def new
    @traininglist = current_user.traininglists.new
    @traininglist.exercises
  end

  def show
    set_traininglist
  end

  def edit
    set_traininglist
  end

  def create
    @ea = params[:traininglist][:exercises_attributes]
    params[:traininglist][:exercises_attributes] = nil
    @traininglist = current_user.traininglists.new(traininglist_params)

    respond_to do |format|
      if @traininglist.save

        params[:traininglist][:exercises_attributes] = @ea
        @ea.each do |key, value| @traininglist.exercises << Exercise.find(value[:id]) end
        format.html { redirect_to @traininglist, notice: 'Exercise was successfully created.' }
        format.json { render action: 'show', status: :created, location: @traininglist }
      else
        format.html { render action: 'new' }
        format.json { render json: @traininglist.errors, status: :unprocessable_entity }
      end


    end
  end

  def update
    respond_to do |format|
      if @traininglist.update(traininglist_params)
        format.html { redirect_to @traininglist, notice: 'Traininglist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @traininglist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercises/1
  # DELETE /exercises/1.json
  def destroy
    @traininglist = current_user.traininglists.find(params[:id])
    @traininglist.destroy
    respond_to do |format|
      format.html { redirect_to traininglists_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_traininglist
      @traininglist = current_user.traininglists.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def traininglist_params
      params.require(:traininglist).permit(:name, :trainingsart, :anzset, :anzwdh, :beschreibung,  {:exercise_ids => []} )
    end
end
