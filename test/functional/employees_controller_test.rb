require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post :create, :employee => {   
        :name       => "Teddy Test"
        :legal_name => "Theodore Test"
        :title      => Title.find_by_name "Account Executive"
        :department => Department.find_by_name "Sales"
        :office     => Office.find_by_name "RTP"
        :manager    => Manager.find_by_name "Molly Manager"
      }
    end

    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should show employee" do
    get :show, :id => employees(:Eric).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => employees(:Eric).to_param
    assert_response :success
  end

  test "should update employee" do
    put :update, :id => employees(:Eric).to_param, :employee => { }
    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete :destroy, :id => employees(:Eric).to_param
    end

    assert_redirected_to employees_path
  end
  
end
