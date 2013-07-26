require 'HTTParty'
require 'json'
require './config/boot'
require './config/environment'

array = (1..100).step(1).to_a

array.each do |p|

url = "http://fantasy.premierleague.com/web/api/elements/"
url = url + "#{p}"
url = url + "/"

response = HTTParty.get(url)


   Player.create!(

     name: response["first_name"] + " " + response["second_name"],
     position: response["type_name"],
     club_id: response["team_id"]
     )
end