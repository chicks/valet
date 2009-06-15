class AssetAssignment < ActiveRecord::Base
  belongs_to :employee
  belongs_to :asset
end
