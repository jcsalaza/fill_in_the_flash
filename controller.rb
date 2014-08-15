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
      view.clear_screen!
      view.move_to_home!
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
      1
    else
      view.display_correct_answer
      puts card.answer.green
      0
    end
  end

  def play_deck(deck)
    view.clear_screen!
    view.move_to_home!
    current_deck = deck.return_deck
    score = 0

    current_deck.each do |card|

      view.display_question(card)
      answer = gets.chomp.downcase
      return if answer == "exit" || answer == "i hate flashcards"
      score += correct_answer?(answer, card)
      puts "\n"*2
    end
    view.score_msg(score)
    puts "Thanks for playing!"
    sleep 3
  end

end




test = Controller.new
test.run
