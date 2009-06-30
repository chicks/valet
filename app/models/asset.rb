class Asset < ActiveRecord::Base

  belongs_to :profile, :class_name => "AssetProfile"
  has_one  :employee, :through => :asset_assignments
  has_many :asset_assignments
  has_many :unique_identifiers, :class_name => "AssetUniqueIdentifier"

  def primary_uid
    AssetUniqueIdentifier.find_by_asset_id(id, :conditions => {"type" => profile.preferences["primary_uid"]})  
  end

end

class Laptop < Asset
end

class MobilePhone < Asset
end

class WirelessDataCard < Asset
end
