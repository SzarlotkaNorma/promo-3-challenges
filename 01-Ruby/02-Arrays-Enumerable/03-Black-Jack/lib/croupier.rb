require_relative 'black_jack'

def play_game
  #TODO: make the user play from terminal in a while loop that will stop when the user will not be asking for  a new card
  #ask for first card
  #end game when user is not asking for a card
  bank = bank_score
  player_score = 0

  while asking_for_card?(player_score)
  player_score += pick_card
  puts state_of_the_game(score, bank)
  end
  outcome = game_outcome(score, bank)
  puts build_message_for(outcome)

end

def state_of_the_game(score, bank)
  # TODO: Returns custom message with player's score and bank's score
  "Your score is #{score}, bank is #{bank}!"
end

def asking_for_card?(score)
  # TODO: Ask for a card only if the score is less or equal to 21, then returns true or false according to the user's choice
  puts "Card ? (type 'Y' or 'yes' for a new card)"
  answer = gets.chomp

  answer == "Y" || answer == "yes"
end

def build_message_for(outcome)
  #TODO: return specific message depending on the game outcome (= bank's score and user's score)
  if outcome[1] > 21
    return "You are over 21... you loose."
  elsif outcome[1] == 21
    return "Black Jack!"
  elsif outcome[1] > outcome[0]
    return "You beat the bank! You win."
  elsif outcome[1] < outcome[0]
    return "Bank beats you! You loose."
  else "n'importe quoi"
  end

end
