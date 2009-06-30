class EmployeeTitle < ActiveRecord::Base
  has_many :employees, :foreign_key => "title_id"

  def to_s
    self.name
  end
end
