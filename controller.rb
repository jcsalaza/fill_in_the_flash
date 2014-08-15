require_relative "view.rb"
require_relative "decks.rb"


class Controller
  attr_reader :view

  def initialize
    @view = View.new
  end

  def run
    until false
      input = view.welcome_message
      case input
      when "songs"
        Deck.play_deck("songs")
      when "movies"
        Deck.play_deck("category")
      when "exit"
        return
      when "i hate flashcards"
        return
      else
        puts "Please enter a valid category."
      end
    end
  end

end

test = Controller.new
test.run
