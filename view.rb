require 'colorize'

class View


  def welcome_message
    puts "Welcome to Fill-In-The-Flash!".bold.blink
    puts
    puts "Please choose a deck to play with by typing its name:".cyan
    puts "\n"
    self.menu
  end

  def menu
    puts "Songs".rjust(17).magenta
    puts "OR".rjust(15).light_cyan
    puts "Movies".rjust(18).magenta
    puts ""
    input = gets.chomp.downcase
  end

  def directions
    puts "Type in the answer (or type 'I hate flashcards' to exit the program) - "
    puts
  end

  def display_question(card)
    puts card.question.magenta
    directions
  end



  def display_correct_answer
    puts "Oops! Looks like your mind deceived you this time. Better luck next time.".red
    puts "Here's the correct answer:"
  end

  def show_score

  end

  def clear_screen!
    print "\e[2J"
  end

  def move_to_home!
    print "\e[H"
  end

  def move_on_message
    puts "Type 'next' to go to next question."
  end

  def score_msg(score)
    if score == 0
      puts
      puts "Really?? 0!"
    else
      puts
      puts "You got #{score} out of 5 correct!"
    end
  end


end

# puts "-"*200
# new = View.new
# new.clear_screen!
# new.move_to_home!
# new.welcome_message
