require_relative 'black_jack'

def play_game
  #determine score joueur et bank
  score_bank = bank_score
  score_player = 0

    while asking_for_card?(score_player) == true
    score_player += pick_card
    puts state_of_the_game(score_player, score_bank)
    end

    outcome = game_outcome(score_bank, bank_score)
    puts build_message_for(outcome)
end


  #TODO: make the user play from terminal in a while loop that will stop when the user will not be asking for  a new card

def state_of_the_game(score, bank)
  "Your score is #{score}, bank is #{bank}!"
  # TODO: Returns custom message with player's score and bank's score
end

def asking_for_card?(score)
  if score <= 21
  puts "Card ? (type 'Y' or 'yes' for a new card)"
  answer = gets.chomp
    #answer == 'Y' || answer == 'yes'
    if answer == 'Y' || answer == 'yes'
      true
    else
      false
    end
  else
    false
  end
end

  # TODO: Ask for a card only if the score is less or equal to 21, then returns true or false according to the user's choice


def build_message_for(outcome)
  if outcome[1] > 21
    "You are over 21... you loose."
  elsif outcome[1] == 21
    "Black Jack!"
  elsif
    outcome[1] < outcome[0]
    "Bank beats you! You loose."
  else
     "You beat the bank! You win."
  end
end

#TODO: return specific message depending on the game outcome (= bank's score and user's score)
