class Employee < ActiveRecord::Base
  belongs_to :title
  belongs_to :department
  belongs_to :office
  belongs_to :manager, :class_name => "Employee"
  has_many   :subordinates, :class_name => "Employee", :foreign_key => "manager_id"
  has_many   :asset_assignments
  has_many   :assets, :through => :asset_assignments

  validates_presence_of :name, :legal_name, :title_id, :department_id, :office_id, :manager_id

  def before_save
    created_at
  end
  
  def before_create
  end

  def to_s
    self.name
  end

end

class FormerEmployee < Employee
end

class CurrentEmployee < Employee
end
