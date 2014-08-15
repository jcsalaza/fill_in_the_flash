# require

class View


  def welcome_message
    puts "Welcome to Fill-In-The-Flash!"
    puts "Please choose a deck to play with by typing its name:"
    puts "\n"
    self.menu
  end

  def menu
    puts "---MENU---"
    puts "  Songs"
    puts "   OR"
    puts "  Movies"
    puts ""
    input = gets.chomp.downcase
  end

  def directions
    puts "Type in the answer (or type 'I hate flashcards' to exit the program) - "
  end

  def display_card(card)
    # displays question, directions, then correct answer
  end

  def correct_answer?

  end

  def display_correct_answer
    puts "Oops! Looks like your mind deceived you this time. Better luck next time."
    puts "Here's the correct answer:"
    # puts correct_answer
  end

  def show_score

  end

  def clear_screen!
    print "\e[2J"
  end

  def move_to_home!
    print "\e[H"
  end

end

puts "-"*200
new = View.new
new.clear_screen!
new.move_to_home!
# new.welcome_message
