require "application_system_test_case"

class SlotBookingsTest < ApplicationSystemTestCase
  setup do
    @slot_booking = slot_bookings(:one)
  end

  test "visiting the index" do
    visit slot_bookings_url
    assert_selector "h1", text: "Slot Bookings"
  end

  test "creating a Slot booking" do
    visit slot_bookings_url
    click_on "New Slot Booking"

    check "Active" if @slot_booking.active
    fill_in "Email", with: @slot_booking.email
    fill_in "Mobile", with: @slot_booking.mobile
    fill_in "Name", with: @slot_booking.name
    fill_in "Slot", with: @slot_booking.slot_id
    fill_in "User", with: @slot_booking.user_id
    click_on "Create Slot booking"

    assert_text "Slot booking was successfully created"
    click_on "Back"
  end

  test "updating a Slot booking" do
    visit slot_bookings_url
    click_on "Edit", match: :first

    check "Active" if @slot_booking.active
    fill_in "Email", with: @slot_booking.email
    fill_in "Mobile", with: @slot_booking.mobile
    fill_in "Name", with: @slot_booking.name
    fill_in "Slot", with: @slot_booking.slot_id
    fill_in "User", with: @slot_booking.user_id
    click_on "Update Slot booking"

    assert_text "Slot booking was successfully updated"
    click_on "Back"
  end

  test "destroying a Slot booking" do
    visit slot_bookings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Slot booking was successfully destroyed"
  end
end
