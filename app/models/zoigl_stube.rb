class ZoiglStube < ActiveRecord::Base
  has_many :zoigl_kalendars
  acts_as_votable 
end
