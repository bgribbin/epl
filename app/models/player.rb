class Player < ActiveRecord::Base
belongs_to :club
has_many :answers



end
