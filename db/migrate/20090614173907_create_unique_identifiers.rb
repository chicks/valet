class CreateUniqueIdentifiers < ActiveRecord::Migration
  def self.up
    create_table :unique_identifiers do |t|
      t.integer :asset_id
      t.string :type
      t.string :uid

      t.timestamps
    end
  end

  def self.down
    drop_table :unique_identifiers
  end
end
