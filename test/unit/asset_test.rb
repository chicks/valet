require 'test_helper'

class AssetTest < ActiveSupport::TestCase

  test "has employees" do
    assert Asset.first.employees
  end

  test "has unique identifiers" do
    assert Asset.first.unique_identifiers.first.uid
  end

end
