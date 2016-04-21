class User < ActiveRecord::Base
  has_many :tefl
  attr_accessor :password
  emformat = /[A-Z0-9_+]@[A-Z0-9](\.[A-Z]{2,4}){1,2}/i
  validates :fname, :presence => true
  validates :sname, :presence => true
  validates :uname, :presence => true, :uniqueness => true
  validates :email, :presence => true, :uniqueness => true, :format => emformat
end