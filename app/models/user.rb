class User < ActiveRecord::Base
  has_many :aspects
  validates :name, :presence => true
end
