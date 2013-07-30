class Guest < ActiveRecord::Base
belongs_to :club
has_many :players
end
