class Tefl < ActiveRecord::Base
  belongs_to :user
  linkformat = /\A(http:\/\/|https:\/\/)\w+\.\w+/
  validates :name, :uniqueness => :true
  validates :link, :uniqueness => :true, :format => linkformat
end
