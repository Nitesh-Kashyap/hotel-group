class HotelGroupsController < ApplicationController
  before_action :set_hotel_group, only: %i[ show edit update destroy ]

  # GET /hotel_groups or /hotel_groups.json
  def index
    @hotel_groups = HotelGroup.all
  end

  # GET /hotel_groups/1 or /hotel_groups/1.json
  def show
  end

  # GET /hotel_groups/new
  def new
    @hotel_group = HotelGroup.new
    @hotel_group.hotels.build
  end

  # GET /hotel_groups/1/edit
  def edit
    @hotel_group.hotels.build
  end

  # POST /hotel_groups or /hotel_groups.json
  def create
    @hotel_group = HotelGroup.new(hotel_group_params)

    respond_to do |format|
      if @hotel_group.save
        format.html { redirect_to hotel_group_url(@hotel_group), notice: "Hotel group was successfully created." }
        format.json { render :show, status: :created, location: @hotel_group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hotel_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hotel_groups/1 or /hotel_groups/1.json
  def update
    respond_to do |format|
      if @hotel_group.update(hotel_group_params)
        format.html { redirect_to hotel_group_url(@hotel_group), notice: "Hotel group was successfully updated." }
        format.json { render :show, status: :ok, location: @hotel_group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hotel_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hotel_groups/1 or /hotel_groups/1.json
  def destroy
    @hotel_group.destroy

    respond_to do |format|
      format.html { redirect_to hotel_groups_url, notice: "Hotel group was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hotel_group
      @hotel_group = HotelGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hotel_group_params
      params.require(:hotel_group).permit(:name, hotels_attributes: Hotel.attribute_names.map(&:to_sym).push(:_destroy, :_id))
    end
end
