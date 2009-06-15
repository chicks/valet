class UniqueIdentifier < ActiveRecord::Base
  belongs_to :asset
end

class SerialNumber < UniqueIdentifier
end

class ESN < UniqueIdentifier
end
