class TraininglistsController < ApplicationController
	before_filter :authenticate_user!
 

  def index
  	@traininglists = current_user.traininglists.all
    @exercises = Exercise.where(published: true).all
  end

  def new
    @traininglist = current_user.traininglists.new
    set_exercises
  end

  def show
    set_traininglist
  end

  def edit
    set_traininglist
    set_exercises
  end

  def create
    @ea = params[:traininglist][:exercises_attributes]
    params[:traininglist][:exercises_attributes] = nil
    @traininglist = current_user.traininglists.new(traininglist_params)

    respond_to do |format|
      if @traininglist.save

        params[:traininglist][:exercises_attributes] = @ea
        @ea.each do |key, value| @traininglist.exercises << Exercise.find(value[:id]) if value[:checked] == "1" end
        format.html { redirect_to @traininglist, notice: 'Exercise was successfully created.' }
        format.json { render action: 'show', status: :created, location: @traininglist }
      else
        set_exercises
        format.html { render action: 'new' }
        format.json { render json: @traininglist.errors, status: :unprocessable_entity }
      end


    end
  end

  def update
    @ea = params[:traininglist][:exercises_attributes]
    params[:traininglist][:exercises_attributes] = nil
    @traininglist = current_user.traininglists.find(params[:id])    
    respond_to do |format|
      if @traininglist.update(traininglist_params)

        params[:traininglist][:exercises_attributes] = @ea
        @traininglist.exercises.delete_all
        @ea.each do |key, value| @traininglist.exercises << Exercise.find(value[:id]) if value[:checked] == "1" end
          
        format.html { redirect_to @traininglist, notice: 'Traininglist was successfully updated.' }
        format.json { head :no_content }
      else
        set_exercises
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
      params.require(:traininglist).permit(:name, :trainingsart, :anzset, :anzwdh, :beschreibung,  exercises_attributes: [:id, :name] )
    end

    def set_exercises
        @exercises = Exercise.where(published: true).all
        @exercises += current_user.exercises
        @exercises.uniq{|x| x.id}     
    end
end
