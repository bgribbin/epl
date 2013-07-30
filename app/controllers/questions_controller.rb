class QuestionsController < ApplicationController

def index
@clubs = Club.all
@guest = Guest.create
 if @guest.save
  session[:guest_id] = @guest.id
  

end

def answer
    @player = Player.find(params[:id])
    @answer = Answer.create(:player_id => @player.id)
    redirect_to wizard_path
    
  end

def start
@club = Club.find(params[:club_id])	
@guest = current_guest
@guest.club_id = @club.id
@guest.save
@club.votes = @club.guests.count
@club.save

	

  
   redirect_to would_you_rather_path(:goalkeeper)
  end
end

def final
  @guest = Guest.find(params[:id])

  @goalkeeper = Player.find(@guest.goalkeeper)
  @defender1 = Player.find(@guest.defender1)
  @defender2 = Player.find(@guest.defender2)
  @defender3 = Player.find(@guest.defender3)
  @defender4 = Player.find(@guest.defender4)
  @midfielder1 = Player.find(@guest.midfielder1)
  @midfielder2 = Player.find(@guest.midfielder2)
  @midfielder3 = Player.find(@guest.midfielder3)
  @midfielder4 = Player.find(@guest.midfielder4)
  @forward1 = Player.find(@guest.forward1)
  @forward2 = Player.find(@guest.forward2)
  @all_players = Player.all.order('votes desc')
  @clubs = Club.all.order('votes desc')
end

end
