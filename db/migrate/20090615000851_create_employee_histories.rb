class CreateEmployeeHistories < ActiveRecord::Migration
  def self.up
    create_table :employee_histories do |t|
      t.integer :employee_id
      t.text :action

      t.timestamps
    end
  end

  def self.down
    drop_table :employee_histories
  end
end
