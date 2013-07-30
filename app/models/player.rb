class Player < ActiveRecord::Base
belongs_to :club
has_many :answers


def vote_count
  answers.count

end


end
