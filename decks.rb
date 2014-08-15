require_relative 'parser.rb'
require_relative 'cards.rb'
require 'pry'

class Deck
  include Parser
  attr_reader :category, :file
  attr_accessor :deck

  def initialize(category)
    @category = category
    @file = get_category_file
    @deck = make_deck
  end

  def make_deck
    temp_deck = []
    Parser.import(file).each do |row|
      temp_deck << Card.new(row)
    end
    temp_deck
  end

  #TODO play deck method that puts deck
  def play_deck
    puts "playing deck"
  end

  private

  def get_category_file
    if category == 'songs'
      'songs.csv'
    elsif category == 'movies'
      'movies.csv'
    end
  end

end

deck = Deck.new('songs')
binding.pry
