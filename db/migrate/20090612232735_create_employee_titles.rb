class CreateEmployeeTitles < ActiveRecord::Migration
  def self.up
    create_table :employee_titles do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :employee_titles
  end
end
