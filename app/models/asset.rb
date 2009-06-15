class Asset < ActiveRecord::Base
  has_many :asset_assignments
  has_many :employees, :through => :asset_assignments
  has_many :unique_identifiers
end

class Laptop < Asset
end

class MobilePhone < Asset
end

class WirelessDataCard < Asset
end
