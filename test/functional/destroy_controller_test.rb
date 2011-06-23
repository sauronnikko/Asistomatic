require 'test_helper'

class DestroyControllerTest < ActionController::TestCase
  test "should get AcademicPersonnel" do
    get :AcademicPersonnel
    assert_response :success
  end

end
