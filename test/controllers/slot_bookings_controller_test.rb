require 'test_helper'

class SlotBookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @slot_booking = slot_bookings(:one)
  end

  test "should get index" do
    get slot_bookings_url
    assert_response :success
  end

  test "should get new" do
    get new_slot_booking_url
    assert_response :success
  end

  test "should create slot_booking" do
    assert_difference('SlotBooking.count') do
      post slot_bookings_url, params: { slot_booking: { active: @slot_booking.active, email: @slot_booking.email, mobile: @slot_booking.mobile, name: @slot_booking.name, slot_id: @slot_booking.slot_id, user_id: @slot_booking.user_id } }
    end

    assert_redirected_to slot_booking_url(SlotBooking.last)
  end

  test "should show slot_booking" do
    get slot_booking_url(@slot_booking)
    assert_response :success
  end

  test "should get edit" do
    get edit_slot_booking_url(@slot_booking)
    assert_response :success
  end

  test "should update slot_booking" do
    patch slot_booking_url(@slot_booking), params: { slot_booking: { active: @slot_booking.active, email: @slot_booking.email, mobile: @slot_booking.mobile, name: @slot_booking.name, slot_id: @slot_booking.slot_id, user_id: @slot_booking.user_id } }
    assert_redirected_to slot_booking_url(@slot_booking)
  end

  test "should destroy slot_booking" do
    assert_difference('SlotBooking.count', -1) do
      delete slot_booking_url(@slot_booking)
    end

    assert_redirected_to slot_bookings_url
  end
end
