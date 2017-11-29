require 'unirest'
# show the user some choices
# show the user the different urls they can go to
p "Choose one of the following options:"
p "1. See your fortune!"
p "2. See your lotto numbers"

# have them pick a particular choice
input = gets.chomp

if input == "1"
  # get them the data from the fortune teller
  response = Unirest.get("http://localhost:3000/tell_your_fortune")
  p response.body['fortune']
elsif input == "2"
  response = Unirest.get("http://localhost:3000/lotto_numbers")
  p "here are your numbers"
  p response.body['numbers']
else
  p "hey pick one or two ya dummy"
end
# show them the data that is on that page

