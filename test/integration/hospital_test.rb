require 'test_helper'

class HospitalTest < ActionDispatch::IntegrationTest
  test "filled with appointments" do
    assert_difference "Appointment.count", + 0 do
      post "/session", params: { name: "佐藤", password: "family!" }
      post "/appointments",params: { appointment: { period_id: 2, department_id: 2} }
    end
  assert_response :redirect
  end
end
