require_relative "view.rb"
require_relative "decks.rb"
require 'pry'

class Controller
  attr_reader :view

  def initialize
    @view = View.new
  end

  def run
    until false
      view.reset_screen
      input = view.welcome_message

      case input
      when "songs"
        song_deck = Deck.new("songs")
        play_deck(song_deck)
      when "movies"
        movie_deck = Deck.new("movies")
        play_deck(movie_deck)
      else
        if exit?(input)
          return
        else
          puts "Please enter a valid category."  # TODO put in view?
          sleep 2
        end
      end
    end
  end

  def correct_answer?(response, card)
    if response == card.answer
      puts "Correct!!!".green                    # TODO putt in view?
      1
    else
      view.display_correct_answer(card.answer)
      0
    end
  end

  def exit?(answer)
    return answer == "exit" || answer == "i hate flashcards" 
  end

  def play_deck(deck)
    view.reset_screen
    current_deck = deck.return_deck
    score = 0

    current_deck.each do |card|
      # TODO play_card method?
      view.display_question(card)
      answer = gets.chomp.downcase

      if exit?(answer)
        return 
      else
        score += correct_answer?(answer, card)
        puts "\n"*2                             # TODO put in view?
      end
    end

    view.score_msg(score)
    sleep 3
  end

end

test = Controller.new
test.run

#===================== Tests ===================

# TODO write tests