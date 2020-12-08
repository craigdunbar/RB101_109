VALID_CHOICES = { 'rock' => 'r',
                  'paper' => 'p',
                  'scissors' => 'sc',
                  'lizard' => 'l',
                  'spock' => 'sp' }

WINNING_MOVES = { 'rock' => ['scissors', 'lizard'],
                  'paper' => ['rock', 'spock'],
                  'scissors' => ['paper', 'lizard'],
                  'lizard' => ['paper', 'spock'],
                  'spock' => ['rock', 'scissors'] }

POINTS_TO_WIN = 5

def clear_screen
  system('clear')
end

def prompt(message)
  puts("=> #{message}")
end

def welcome
  prompt("Welcome to Rock, Paper, Scissors, Lizard, Spock")
  prompt("The winner will be the first to #{POINTS_TO_WIN}")
  prompt("You can type rock(r), paper(p), scissors(sc), lizard(l), spock(sp)")
  prompt("or simply r, p, sc, l, sp")
  puts ""
  puts ""
end

def get_user_choice
  choice = ''
  loop do
    prompt("Choose one: rock(r), paper(p), scissors(sc), lizard(l), spock(sp)")
    choice = gets.chomp.downcase

    if VALID_CHOICES.include?(choice)
      break
    elsif VALID_CHOICES.value?(choice)
      choice = VALID_CHOICES.key(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  choice
end

def get_computer_choice
  VALID_CHOICES.keys.to_a.sample
end

def win?(first, second)
  WINNING_MOVES[first].include?(second)
end

def determine_winner(player, computer)
  if win?(player, computer)
    'player'
  elsif win?(computer, player)
    'computer'
  else
    'tie'
  end
end

def display_results(player, computer, winner)
  prompt("You chose: #{player}. Computer chose: #{computer}.")
  case winner
  when 'player' then prompt('You won!')
  when 'computer' then prompt(' Computer won!')
  when 'tie' then prompt("It's a tie!")
  end
end

def update_current_score(scores, winner)
  if winner == 'player'
    scores[:player_score] += 1
  elsif winner == 'computer'
    scores[:computer_score] += 1
  else
    scores[:tie] += 1
  end
end

def display_current_score(scores)
  puts "Player #{scores[:player_score]} Computer #{scores[:computer_score]}"
  puts ""
end

def game_over?(scores)
  scores[:player_score] == POINTS_TO_WIN ||
    scores[:computer_score] == POINTS_TO_WIN
end

def display_overall_winner(scores)
  if scores[:player_score] == POINTS_TO_WIN
    prompt("You reached five wins. You're the winner!!")
  else
    prompt("The computer reached 5 wins. You're a loser!!")
  end
end

def ask_for_new_game
  answer = ''
  loop do
    prompt("Do you want to play again? ( y, yes, n, no)")
    answer = gets.chomp
    if ['y', 'yes', 'n', 'no'].include?(answer)
      break
    else
      prompt('Invalid answer: Only y, yes, n, no allowed')
    end
  end
  answer
end

def new_game(answer)
  ['y', 'yes'].include?(answer)
end

#--- Start ---

clear_screen
welcome

loop do
  scores = { player_score: 0,
             computer_score: 0,
             tie: 0 }
  total_games = 1

  loop do
    puts "Game number: #{total_games}"

    user_move = get_user_choice
    computer_move = get_computer_choice

    winner = determine_winner(user_move, computer_move)
    display_results(user_move, computer_move, winner)

    update_current_score(scores, winner)
    display_current_score(scores)

    break if game_over?(scores)

    total_games += 1
  end

  display_overall_winner(scores)
  answer = ask_for_new_game
  break unless new_game(answer)
  clear_screen
end

clear_screen
prompt("Thank you for playing. Good bye!")
