class Algo < ActiveRecord::Base

  has_many :comments

  validates_presence_of :algorithm
  validates_presence_of :name

end
