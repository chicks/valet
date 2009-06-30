class AssetUniqueIdentifier < ActiveRecord::Base
  belongs_to :asset, :foreign_key => "unique_identifier_id"

  def to_s
    uid
  end
end

class SerialNumber < AssetUniqueIdentifier
end

class ESN < AssetUniqueIdentifier
end
