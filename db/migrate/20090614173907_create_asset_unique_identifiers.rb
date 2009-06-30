class CreateAssetUniqueIdentifiers < ActiveRecord::Migration
  def self.up
    create_table :asset_unique_identifiers do |t|
      t.integer :asset_id
      t.string :type
      t.string :uid

      t.timestamps
    end
  end

  def self.down
    drop_table :asset_unique_identifiers
  end
end
