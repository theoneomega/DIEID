require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, event: { analyst_id: @event.analyst_id, area_id: @event.area_id, backup_file: @event.backup_file, crime_id: @event.crime_id, description: @event.description, detained: @event.detained, detained_id: @event.detained_id, drug_id: @event.drug_id, drugs: @event.drugs, event_date: @event.event_date, id: @event.id, interior_number: @event.interior_number, locality: @event.locality, observations: @event.observations, place_id: @event.place_id, priority_id: @event.priority_id, source: @event.source, status_id: @event.status_id, street: @event.street, suburb: @event.suburb, suspect_id: @event.suspect_id, suspects: @event.suspects, township_id: @event.township_id, vehicle_id: @event.vehicle_id, vehicles: @event.vehicles, victim_id: @event.victim_id, victims: @event.victims, weapon_id: @event.weapon_id, weapons: @event.weapons }
    end

    assert_redirected_to event_path(assigns(:event))
  end

  test "should show event" do
    get :show, id: @event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event
    assert_response :success
  end

  test "should update event" do
    put :update, id: @event, event: { analyst_id: @event.analyst_id, area_id: @event.area_id, backup_file: @event.backup_file, crime_id: @event.crime_id, description: @event.description, detained: @event.detained, detained_id: @event.detained_id, drug_id: @event.drug_id, drugs: @event.drugs, event_date: @event.event_date, id: @event.id, interior_number: @event.interior_number, locality: @event.locality, observations: @event.observations, place_id: @event.place_id, priority_id: @event.priority_id, source: @event.source, status_id: @event.status_id, street: @event.street, suburb: @event.suburb, suspect_id: @event.suspect_id, suspects: @event.suspects, township_id: @event.township_id, vehicle_id: @event.vehicle_id, vehicles: @event.vehicles, victim_id: @event.victim_id, victims: @event.victims, weapon_id: @event.weapon_id, weapons: @event.weapons }
    assert_redirected_to event_path(assigns(:event))
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event
    end

    assert_redirected_to events_path
  end
end
