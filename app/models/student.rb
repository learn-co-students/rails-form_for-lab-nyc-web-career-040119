class Student < ActiveRecord::Base
  belongs_to :school_class

  def full_name
    self.first_name + " " + self.last_name
  end
end
