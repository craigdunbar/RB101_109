INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]] # diagonals
POINTS_TO_WIN = 3

def prompt(msg)
  puts "=> #{msg}"
end

def clear_screen
  system 'clear'
end

def display_welcome_message
  prompt "Welcome to TIc Tac Toe"
  prompt "The winner is the first to five games"
  prompt "Good luck!"
  puts ''
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  # system 'clear'
  puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, sep=', ', word='or')
  if arr.size < 2
    arr.join(sep)
  else
    last_item = arr.pop
    arr.join(sep) + sep + word + ' ' + last_item.to_s
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice"
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  if attack?(brd)
    brd[find_attack(brd)[0]] = COMPUTER_MARKER
  elsif threat?(brd)
    brd[find_threat(brd)[0]] = COMPUTER_MARKER
  elsif brd[5] == INITIAL_MARKER
    brd[5] = COMPUTER_MARKER
  else
    square = empty_squares(brd).sample
    brd[square] = COMPUTER_MARKER
  end
end

def find_threat(brd)
  threat = []
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2 &&
       brd.values_at(*line).count(COMPUTER_MARKER) == 0
      threat << brd.select { |k, v| line.include?(k) && v == ' ' }.keys.first
    end
  end
  threat
end

def threat?(brd)
  find_threat(brd).count != 0
end

def find_attack(brd)
  attack = []
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2 &&
       brd.values_at(*line).count(PLAYER_MARKER) == 0
      attack << brd.select { |k, v| line.include?(k) && v == ' ' }.keys.first
    end
  end
  attack
end

def attack?(brd)
  find_attack(brd).count != 0
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def current_score(brd, scores)
  if detect_winner(brd) == 'Player'
    scores[:player_score] += 1
  else
    scores[:computer_score] += 1
  end
  detect_winner(brd)
end

def game_winner(brd)
  if detect_winner(brd) == 'Player'
    puts "Player won!"
  elsif detect_winner(brd) == 'Computer'
    puts "Computer won!"
  else
    puts "It's a tie!"
  end
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def display_current_score(scores)
  puts "Player :#{scores[:player_score]} Computer: #{scores[:computer_score]}"
  puts ''
end

def game_over?(scores)
  scores[:player_score] == POINTS_TO_WIN ||
    scores[:computer_score] == POINTS_TO_WIN
end

def grand_winner(scores)
  if scores[:player_score] == POINTS_TO_WIN
    "Player"
  else
    "Computer"
  end
end

def display_grand_winner(scores)
  prompt "#{grand_winner(scores)} is the champion with #{POINTS_TO_WIN} wins!"
end

def ask_for_new_game
  answer = ''
  loop do
    prompt("Do you want to play again? ( y, yes, n, no)")
    answer = gets.chomp
    if ['y', 'yes', 'n', 'no'].include?(answer)
      break
    else
      prompt('Invalid answer: Only y, yes, n or no allowed')
    end
  end
  answer
end

def new_game(answer)
  ['y', 'yes'].include?(answer)
end

def determine_first_player
  answer = ''
  loop do
    puts "Will you play first? (y or n)"
    answer = gets.chomp.downcase
    if ['y', 'yes', 'n', 'no'].include?(answer)
      break
    else
      prompt('Invalid answer: Only y, yes, n or no allowed')
    end
  end
  if answer == 'y'
    "player"
  else
    "computer"
  end
end

def alternate_player(player)
  if player == "player"
    "computer"
  else
    "player"
  end
end

def place_piece!(player, brd)
  if player == "player"
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

# Start

loop do # main game loop
  clear_screen
  display_welcome_message
  scores = { player_score: 0,
             computer_score: 0,
             tie: 0 }
  count = 1
  current_player = determine_first_player
  loop do # best of 5 loop
    break if game_over?(scores)
    board = initialize_board
    puts "Game # #{count}"

    loop do # single move loop
      display_board(board)
      place_piece!(current_player, board)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    current_score(board, scores)
    game_winner(board)
    display_current_score(scores)
    count += 1
  end
  display_grand_winner(scores)

  answer = ask_for_new_game
  break unless new_game(answer)
end

clear_screen
prompt "Thanks for playing Tic Tac Toe! Good bye!"
