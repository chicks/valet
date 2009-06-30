class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.string :type
      t.string :make
      t.string :model
      t.string :created_by
      t.string :updated_by
      t.integer :purchase_order_id
      t.integer :profile_id, :default => 1

      t.timestamps
    end
  end

  def self.down
    drop_table :assets
  end
end
