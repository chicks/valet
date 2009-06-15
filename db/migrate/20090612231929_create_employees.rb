class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.string :type
      t.string :name
      t.string :legal_name
      t.integer :status_id
      t.integer :department_id
      t.integer :title_id
      t.integer :manager_id
      t.integer :office_id
      t.string  :created_by
      t.string  :updated_by
      t.date    :start_date
      t.date    :end_date
      t.boolean :remote

      t.timestamps
    end
  end

  def self.down
    drop_table :employees
  end
end
