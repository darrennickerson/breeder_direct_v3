class AnimalsController < ApplicationController
  before_action :set_animal, only: [:show, :edit, :update, :destroy]

  # GET /animals
  # GET /animals.json
  def index
    @animals = current_user.animals.all
  end

  # GET /animals/1
  # GET /animals/1.json
  def show
    @logs = @animal.logs.all
  end

  # GET /animals/new
  def new
    @animal = Animal.new
    @trait = Trait.all
  end

  # GET /animals/1/edit
  def edit
  end

  # POST /animals
  # POST /animals.json
  def create
    @animal = Animal.new(animal_params)
@animal.user_id = current_user.id
    respond_to do |format|
      if @animal.save

        format.html { redirect_to @animal, notice: 'Animal was successfully created.' }
        format.json { render :show, status: :created, location: @animal }
      else
        format.html { render :new }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animals/1
  # PATCH/PUT /animals/1.json
  def update
    respond_to do |format|
      if @animal.update(animal_params)
        format.html { redirect_to @animal, notice: 'Animal was successfully updated.' }
        format.json { render :show, status: :ok, location: @animal }
      else
        format.html { render :edit }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animals/1
  # DELETE /animals/1.json
  def destroy
    @animal.destroy
    respond_to do |format|
      format.html { redirect_to animals_url, notice: 'Animal was successfully destroyed.' }
      format.json { head :no_content }
    end
    
  
  end
  def delete_image_attachment
    
    specific =  ActiveStorage::Attachment.find(params[:animal_id])
    specific.purge
    animal = Animal.find(params[:animal])
  
    redirect_to animal_url(animal)
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animal
      @animal = Animal.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def animal_params
      params.require(:animal).permit(:code, :name, :p_date, :h_date, :user_id, :slug, images:[], traits:[])
    end
end
