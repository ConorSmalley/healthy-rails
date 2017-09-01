require 'test_helper'

class MedicationDrugsControllerTest < ActionController::TestCase
  setup do
    @medication_drug = medication_drugs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medication_drugs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medication_drug" do
    assert_difference('MedicationDrug.count') do
      post :create, medication_drug: { drugMg: @medication_drug.drugMg, drugMl: @medication_drug.drugMl, drug_id: @medication_drug.drug_id, format: @medication_drug.format, medication_id: @medication_drug.medication_id }
    end

    assert_redirected_to medication_drug_path(assigns(:medication_drug))
  end

  test "should show medication_drug" do
    get :show, id: @medication_drug
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medication_drug
    assert_response :success
  end

  test "should update medication_drug" do
    patch :update, id: @medication_drug, medication_drug: { drugMg: @medication_drug.drugMg, drugMl: @medication_drug.drugMl, drug_id: @medication_drug.drug_id, format: @medication_drug.format, medication_id: @medication_drug.medication_id }
    assert_redirected_to medication_drug_path(assigns(:medication_drug))
  end

  test "should destroy medication_drug" do
    assert_difference('MedicationDrug.count', -1) do
      delete :destroy, id: @medication_drug
    end

    assert_redirected_to medication_drugs_path
  end
end
