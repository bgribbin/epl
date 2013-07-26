class QuestionsController < ApplicationController

def index
@clubs = Club.all

end

def answer
    @player = Player.find(params[:id])
    @answer = Answer.create(:player_id => @player.id)
    redirect_to wizard_path
    
  end

def start
@club = Club.find(params[:club_id])	
@guest = Guest.create(
             :club_id => @club.id )
	
  if @guest.save
  session[:guest_id] = @guest.id
  
   redirect_to would_you_rather_path(:goalkeeper)
  end
end


end
