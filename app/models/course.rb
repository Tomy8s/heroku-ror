class Course < ActiveRecord::Base
  belongs_to :coursesSite
  belongs_to :instructor
end
