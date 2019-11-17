class SlotBookingsController < ApplicationController
  before_action :set_slot_booking, only: [:show, :edit, :update, :destroy]

  # GET /slot_bookings
  # GET /slot_bookings.json
  def index
    @slot_bookings = SlotBooking.where(user_id: current_user.id)
  end

  # GET /slot_bookings/1
  # GET /slot_bookings/1.json
  def show
  end

  # GET /slot_bookings/new
  def new
    @slot_booking = SlotBooking.new
  end

  # GET /slot_bookings/1/edit
  def edit
  end

  # POST /slot_bookings
  # POST /slot_bookings.json
  def create
    @slot_booking = SlotBooking.new(slot_booking_params)

    respond_to do |format|
      if @slot_booking
        params[:slot_booking][:slot_id].each do |slot|
         SlotBooking.create(name: @slot_booking.name,user_id: current_user.id, slot_id: slot,email: @slot_booking.email,mobile: @slot_booking.mobile,active: true)
        end
        format.html { redirect_to @slot_booking, notice: 'Slot booking was successfully created.' }
        format.json { render :show, status: :created, location: @slot_booking }
      else
        format.html { render :new }
        format.json { render json: @slot_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slot_bookings/1
  # PATCH/PUT /slot_bookings/1.json
  def update
    respond_to do |format|
      if @slot_booking.update(slot_booking_params)
        format.html { redirect_to @slot_booking, notice: 'Slot booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @slot_booking }
      else
        format.html { render :edit }
        format.json { render json: @slot_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slot_bookings/1
  # DELETE /slot_bookings/1.json
  def destroy
    @slot_booking.destroy
    respond_to do |format|
      format.html { redirect_to slot_bookings_url, notice: 'Slot booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slot_booking
      @slot_booking = SlotBooking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slot_booking_params
      params.require(:slot_booking).permit(:name, :user_id, :slot_id, :email, :mobile, :active)
    end
end
