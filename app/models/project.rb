class Project < ActiveRecord::Base

validates :name, :description, :manager, :partner, :planned_budget, :actual_budget, :theme, :start_date, :end_date, :extensions, :presence => true

validates :planned_budget, :actual_budget, :numericality => {:greater_than_or_equal_to => 1}

validates :name, :uniqueness => true

end
