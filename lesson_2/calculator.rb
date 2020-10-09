require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'

def clear_screen
  Kernel.system('clear')
end

def messages(message, lang)
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  Kernel.puts("=> #{message}")
end

def get_name
  name = ''
  loop do
    name = Kernel.gets().chomp()

    if check_name(name)
      break
    else
      prompt('valid_name')
    end
  end
  name
end

def check_name(name)
  /^[a-z]+$/i.match(name)
end

def get_number
  number = ''
  loop do
    number = Kernel.gets().chomp()

    if valid_number?(number)
      break
    else
      prompt('valid_number')
    end
  end
  number
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def valid_number?(input)
  integer?(input) || float?(input)
end

def check_zero_division(number1, number2)
  loop do
    if number1.to_f != 0 && number2.to_f == 0
      prompt('zero_division')
      number2 = get_number()
    else
      break
    end
  end
  number1.to_f() / number2.to_f()
end

def get_operator
  operator = ''
  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt('valid_operator')
    end
  end
  operator
end

def operation_to_message(operator)
  case operator
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multipying'
  when '4'
    'Dividing'
  end
end

def calculate_result(number1, number2, operator)
  result = case operator
           when '1'
             number1.to_f() + number2.to_f()
           when '2'
             number1.to_f() - number2.to_f()
           when '3'
             number1.to_f() * number2.to_f()
           when '4'
             check_zero_division(number1, number2)
           end
  result
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
prompt('welcome')
name = get_name

Kernel.puts "Hello " + "#{name}!"

loop do # main loop
  prompt('number1')
  number1 = get_number

  prompt('number2')
  number2 = get_number

  prompt('operator_prompt')
  operator = get_operator
  Kernel.puts "#{operation_to_message(operator)} the two numbers..."

  result = calculate_result(number1, number2, operator)
  Kernel.puts "The result is " "#{result}"

  prompt('calculate_again')
  answer = get_new_calc_answer
  break unless new_calc(answer)
  clear_screen
end

prompt('goodbye')
