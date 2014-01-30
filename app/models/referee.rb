class Referee < ActiveRecord::Base
  has_many :bouts
  has_many :leagues, :through => :bouts
end
