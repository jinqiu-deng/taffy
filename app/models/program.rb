class Program < ActiveRecord::Base

  has_many :courses
  has_many :assignments
end
