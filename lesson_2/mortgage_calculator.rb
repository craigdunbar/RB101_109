# *** PEDAC ***
# Understand the problem
# - input/output
#   - input: the loan amont - string
#   - input: the annual percentag rate (APR) - string
#   - input: loan duration - string
#   - output: monthly payment - float
# - requirements (explicit/implicit)
#   - Use puts for prompts so the input comes on a new line
#   - use detailed variable names
# - implicit knowledge (problem domain concepts or keywords)
# - questions / clarify
#   - Verify user input? Positive integer and float once converted
#     - Assuming not since no examples given
#   - Input is case sensitive or insensitive?
# - mental model
#   - Ask the user for the loan amount, APR and duration.
#   - convert to floats
#   - covert loan duration to months, and APR to monthly rate by diving by 12
#   - calculate monthly payment using formula:
#     monthly payment = loan amount *(mothly interest rate/
#                       (1-(1 +monthly interest rate) to exp(-loan duration)))
#
# Examples / test cases
# - use mortgage calculator link provided in question
# - given
# - happy paths
# - edge cases
# - failure / bad inputs
#   - hit enter
#   - negative
#   - enter string not number
#   - enter 0
# - questions / clarify
# Data structures
# - input: string converted to floats
# - output: float
# - intermediate:
#   - string input needs converting to float for math
# Algorithm
# -
# =end

require 'yaml'
MESSAGES = YAML.load_file('mortgage_calculator.yml')

def clear_screen
  Kernel.system('clear')
end

def messages(message)
  MESSAGES[message]
end

def prompt(key)
  message = messages(key)
  Kernel.puts("=> #{message}")
end

def get_loan_amount
  loan_amount = ''
  loop do
    loan_amount = gets.chomp
    if loan_amount.empty?() ||
       loan_amount.to_f <= 0 ||
       /^[a-z]+$/i.match(loan_amount)
      prompt('valid_loan')
    else
      break
    end
  end
  loan_amount
end

def get_apr
  apr = ''
  loop do
    apr = gets.chomp
    if apr.empty?() ||
       apr.to_f <= 0 ||
       apr.to_f > 99 ||
       /^[a-z]+$/i.match(apr)
      prompt('valid_apr')
    else
      break
    end
  end
  apr
end

def get_loan_duration
  loan_duration = ''
  loop do
    loan_duration = gets.chomp
    if loan_duration.empty?() ||
       loan_duration.to_f <= 0 ||
       loan_duration.to_f > 30 ||
       loan_duration.to_i.to_s != loan_duration
      prompt('valid_years')
    else
      break
    end
  end
  loan_duration
end

def calc_monthly_payment(loan_amount, apr, loan_duration)
  apr = apr.to_f / 100
  monthly_interest_rate = apr / 12
  loan_duration_months = loan_duration.to_f * 12

  # monthly_payment caclculation
  loan_amount.to_f * (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(- loan_duration_months)))
end

def get_new_calc_answer
  answer = ' '
  loop do
    answer = Kernel.gets().chomp().downcase()
    if ['y', 'yes', 'n', 'no'].include?(answer)
      break
    else
      prompt('valid_answer')
    end
  end
  answer
end

def new_calc(answer)
  ['y', 'yes'].include?(answer)
end

clear_screen()

loop do # main loop
  prompt('loan_amount')
  loan_amount = get_loan_amount

  prompt('apr')
  apr = get_apr

  prompt('loan_duration')
  loan_duration = get_loan_duration

  monthly_payment = calc_monthly_payment(loan_amount, apr, loan_duration)
  puts "The monthly payment is #{monthly_payment.round(2)}"

  prompt('calculate_again')
  answer = get_new_calc_answer
  break unless new_calc(answer)
  clear_screen
end
prompt('goodbye')
