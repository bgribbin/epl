class WouldYouRatherController < ApplicationController
  include Wicked::Wizard
  steps :goalkeeper, :defender1, :defender2, :defender3,
        :defender4, :midfielder1, :midfielder2, :midfielder3,
        :midfielder4, :forward1, :forward2 

  def finish_wizard_path
  final_questions_path(:id => @guest.id)
end

  def show
  	@guest = current_guest
  	@goalies = Player.where(position: 'Goalkeeper').sample(3)
  	@defenders = Player.where(position: 'Defender').sample(3)
    @midfielders = Player.where(position: 'Midfielder').sample(3)
    @forwards = Player.where(position: 'Forward').sample(3)
  	render_wizard
  end

 def update
    
 	@player = Player.find(params[:player_id])
 	@guest = current_guest
 	case step
    when :goalkeeper
    	@guest.goalkeeper = @player.id
    	@guest.save  
    when :defender1
    	@guest.defender1 = @player.id
    	@guest.save
    when :defender2
    	@guest.defender2 = @player.id
    	@guest.save
    when :defender3
    	@guest.defender3 = @player.id
    	@guest.save
    when :defender4
    	@guest.defender4 = @player.id
    	@guest.save
    when :midfielder1
        @guest.midfielder1 = @player.id
        @guest.save
    when :midfielder2
        @guest.midfielder2 = @player.id
        @guest.save
    when :midfielder3
        @guest.midfielder3 = @player.id
        @guest.save
    when :midfielder4
        @guest.midfielder4 = @player.id
        @guest.save
    when :forward1
        @guest.forward1 = @player.id
        @guest.save
    when :forward2
        @guest.forward2 = @player.id
        @guest.save
    end
    @answer = Answer.create(:player_id => @player.id)
    @player.votes = @player.answers.count
    @player.save
 
 	render_wizard @guest
 end

def index
@players = Player.where(position: 'Forward').sample(3)
@all_players = Player.all.sort_by { |player| player.votes }.reverse


end

end
