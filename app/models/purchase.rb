class Purchase < ActiveRecord::Base
  validates_presence_of :name
 #test 
  belongs_to :user
end
