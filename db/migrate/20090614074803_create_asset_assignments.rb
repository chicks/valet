class CreateAssetAssignments < ActiveRecord::Migration
  def self.up
    create_table :asset_assignments do |t|
      t.integer :employee_id
      t.integer :asset_id
      t.string :created_by
      t.string :updated_by
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end

  def self.down
    drop_table :asset_assignments
  end
end
