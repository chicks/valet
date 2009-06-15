require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase

  test "has assets" do
    assert Employee.first.assets
  end

end
