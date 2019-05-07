def welcome
  # code #welcome here	  # code #welcome here
  puts "Welcome to the Blackjack Table"
end	end


 def deal_card	def deal_card
  # code #deal_card here	  #outputs a random number between 0-11
  card = 1 + rand(11)
end	end


 def display_card_total	def display_card_total(card)
  # code #display_card_total here	#accepts one argument, the card total
#prints the value of the cards to the screen
#does not hardcode the card total
  puts "Your cards add up to #{card}"
end	end


 def prompt_user	def prompt_user
  # code #prompt_user here	#gives instructions for hitting or staying
  puts "Type 'h' to hit or 's' to stay"
end	end


 def get_user_input	def get_user_input
  # code #get_user_input here	  gets.chomp
end	end


 def end_game	def end_game(card_total)
  # code #end_game here	#prints apology, card total, and thank you message
puts "Sorry, you hit #{card_total}. Thanks for playing!"
end	end


 def initial_round	def initial_round
  # code #initial_round here	#calls on #deal_card twice and returns the sum
#calls on the '#display_card_total' to print sum of cards
card = deal_card + deal_card
display_card_total(card)
card
end	end


 def hit?	def hit?(card)
  # code hit? here	# code hit? here
prompt_user
user_input = get_user_input

 if user_input == "h"
  #if user_input is the same as "h" they get a card, and it iterates(+=), which means they can do this repeatedly
card += deal_card

 elsif user_input == "s"
  #If they enter "s" for stay, then it returns the value of their card
 card

  else
   #if they enter nothing or a letter other than "s" or "h" the computer tells them this is an invalid_command (it calls that method)
 invalid_command
end
end	end



 def invalid_command	def invalid_command
  # code invalid_command here	  # code invalid_command here
  puts "Please enter a valid command"
end	end



 #####################################################	#####################################################
# get every test to pass before coding runner below #	# get every test to pass before coding runner below #
#####################################################	#####################################################

 #What you're doing here is calling all the previously defined methods in a sequence
#RULES + PLAY = GAME
def runner	def runner
  # code runner here	  welcome
  card = hit?(initial_round)
  #This word until is a looping word. It refers to time and state. Psuedocode: Until the value of their card is greater than 21
  until card > 21
    #Show the value of the card. Call that method
    display_card_total(card)
    #Keep iterating, giving them cards
    card += hit?(deal_card)
    #When the player hits 21, the game is ovah.
  end
    display_card_total(card)
    end_game(card)
    #(card) is the argument. Must be there because it's part of the def
end	end

  0  lib/runner.rb  100644 → 100755
No changes.
  8  spec/blackjack_spec.rb  100644 → 100755
@@ -7,7 +7,7 @@


 describe "#deal_card" do	describe "#deal_card" do
  it "generates a random number between 1-11" do	  it "generates a random number between 1-11" do
    20.times do 	    20.times do
      card = deal_card	      card = deal_card
      expect(card).to be > 0	      expect(card).to be > 0
      expect(card).to be < 12	      expect(card).to be < 12
@@ -106,11 +106,11 @@ def get_user_input
  before(:each) do	  before(:each) do
    def get_user_input	    def get_user_input
      "h"	      "h"
    end 	    end
  end	  end


   it "calls on the #welcome method, 	  it "calls on the #welcome method,
  then on the #initial_round method, 	  then on the #initial_round method,
  then calls #hit? and #display_card_total methods	  then calls #hit? and #display_card_total methods
  -until- the card sum is greater than 21,	  -until- the card sum is greater than 21,
  then calls on the #end_game method" do	  then calls on the #end_game method" do
    
