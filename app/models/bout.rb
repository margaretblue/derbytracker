class Bout < ActiveRecord::Base
  belongs_to :league
  belongs_to :referee
end
