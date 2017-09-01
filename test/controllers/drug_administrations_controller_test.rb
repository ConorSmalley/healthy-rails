require 'test_helper'

class DrugAdministrationsControllerTest < ActionController::TestCase
  setup do
    @drug_administration = drug_administrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drug_administrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drug_administration" do
    assert_difference('DrugAdministration.count') do
      post :create, drug_administration: { dt: @drug_administration.dt, medication_id: @drug_administration.medication_id, patient_id: @drug_administration.patient_id }
    end

    assert_redirected_to drug_administration_path(assigns(:drug_administration))
  end

  test "should show drug_administration" do
    get :show, id: @drug_administration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drug_administration
    assert_response :success
  end

  test "should update drug_administration" do
    patch :update, id: @drug_administration, drug_administration: { dt: @drug_administration.dt, medication_id: @drug_administration.medication_id, patient_id: @drug_administration.patient_id }
    assert_redirected_to drug_administration_path(assigns(:drug_administration))
  end

  test "should destroy drug_administration" do
    assert_difference('DrugAdministration.count', -1) do
      delete :destroy, id: @drug_administration
    end

    assert_redirected_to drug_administrations_path
  end
end
