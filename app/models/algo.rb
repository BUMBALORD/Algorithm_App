class Algo < ActiveRecord::Base

  validates_presence_of :algorithm
  validates_presence_of :name

end
