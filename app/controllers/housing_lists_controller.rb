class HousingListingsController < ApplicationController
  
  def index
   @housing_listings.HousingListing.all
  end 

  def show
    @housing_listing = HousingListing.find(params[:id])
  end

  # GET /mansions/new
  def new
    @housing_listing = HousingListing.new
  end

  def edit
  end

 
  def create
    @housing_listing = HousingListing.new(housing_listing_params)

    respond_to do |format|
      if @mansion.save
        format.html { redirect_to @mansion, notice: 'Mansion was successfully created.' }
        format.json { render :show, status: :created, location: @mansion }
      else
        format.html { render :new }
        format.json { render json: @mansion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mansions/1
  # PATCH/PUT /mansions/1.json
  def update
    respond_to do |format|
      if @mansion.update(mansion_params)
        format.html { redirect_to @mansion, notice: 'Mansion was successfully updated.' }
        format.json { render :show, status: :ok, location: @mansion }
      else
        format.html { render :edit }
        format.json { render json: @mansion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mansions/1
  # DELETE /mansions/1.json
  def destroy
    @mansion.destroy
    respond_to do |format|
      format.html { redirect_to mansions_url, notice: 'Mansion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def book
    mansion = Mansion.find(params[:id])
    # DROPDOWNS
    @genders = PersonalityTrait.where(category: "gender")
    @relationship_status = PersonalityTrait.where(category: "relationship status")
    # CHECKBOXES
    @random_traits = PersonalityTrait.where(category: "random traits")
  end

  def leave
    mansion = Mansion.find(params[:id])
    current_user.mansions.delete(mansion)
    current_user.save
    redirect_to :back
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mansion
      @mansion = Mansion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mansion_params
      params.require(:mansion).permit(:name, :description, :address, :region, :city, :bedrooms, :bathrooms, :square_feet, :available_date, :photo, :price, :source)
    end
end




