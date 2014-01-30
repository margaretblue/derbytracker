class League < ActiveRecord::Base
  has_many :bouts
  has_many :referees, :through => :bouts
end
