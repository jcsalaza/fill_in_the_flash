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
        song_deck = Deck.new("songs")
        play_deck(song_deck)
      when "movies"
        movie_deck = Deck.new("movies")
        play_deck(movie_deck)
      when "exit"
        return
      when "i hate flashcards"
        return
      else
        puts "Please enter a valid category."
      end
    end
  end

  def correct_answer?(response, card)
    if response == card.answer
      puts "Correct!!!".green
    else
      view.display_correct_answer
      puts card.answer
    end
  end

  def play_deck(deck)
    current_card = nil

    until deck.last_card_id >= current_card.id
      current_card = returned_card
      view.display_question(current_card)
      answer = gets.chomp.downcase
      correct_answer?(answer, current_card)
    end
    puts "Thanks for playing!"
  end

  end


end

test = Controller.new
test.run
