class AssetProfile < ActiveRecord::Base
  has_many :assets, :foreign_key => "profile_id"
  serialize :preferences
end
