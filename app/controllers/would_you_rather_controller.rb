class WouldYouRatherController < ApplicationController
  include Wicked::Wizard
  steps :goalkeeper, :defender1, :defender2, :defender3,
        :defender4, :midfielder1, :midfielder2, :midfielder3,
        :midfielder4, :forward1, :forward2 


  def show
  	@guest = current_guest
  	@goalies = Player.where(position: 'Goalkeeper').sample(3)
  	@defenders = Player.where(position: 'Defender').sample(3)
  	render_wizard
  end

 def update
 	@player = Player.find(params[:id])
 	@guest = current_guest
 	case step
    when :goalkeeper
    	@guest.goalkeeper = @player.id
    	@guest.save
    	@answer = Answer.create(:player_id => @player.id)
    end
 	case step
    when :defender1
    	@defenders = Player.where(position: 'Defender').sample(3)
    	@guest.defender1 = @player.id
    	@guest.save
    	@answer = Answer.create(:player_id => @player.id)
    end
    case step
    when :defender2
    	@defenders = Player.where(position: 'Defender').sample(3)
    	@guest.defender2 = @player.id
    	@guest.save
    	@answer = Answer.create(:player_id => @player.id)
    end
    case step
    when :defender3
    	@defenders = Player.where(position: 'Defender').sample(3)
    	@guest.defender3 = @player.id
    	@guest.save
    	@answer = Answer.create(:player_id => @player.id)
    end
    case step
    when :defender4
    	@defenders = Player.where(position: 'Defender').sample(3)
    	@guest.defender3 = @player.id
    	@answer = Answer.create(:player_id => @player.id)
    	@guest.save
    end
 	render_wizard(@guest)
 end

def index
@players = Player.where(position: 'Forward').sample(3)
@all_players = Player.all.sort_by { |player| player.answers.count }.reverse


end

end
