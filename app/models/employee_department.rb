class EmployeeDepartment < ActiveRecord::Base
  has_many :employees, :foreign_key => "department_id"

  def to_s
    self.name
  end
end
