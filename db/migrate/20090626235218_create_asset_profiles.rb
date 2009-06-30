class CreateAssetProfiles < ActiveRecord::Migration
  def self.up
    create_table :asset_profiles do |t|
      t.string :name
      t.text :preferences

      t.timestamps
    end
  end

  def self.down
    drop_table :asset_profiles
  end
end
