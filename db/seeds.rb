# frozen_string_literal: true

require 'faker'

MOVIE_TITLES = [
  'Back to the Future', 'Harry Potter', 'Hobbit', 'Star Wars', 'Ghost Busters'
].freeze

SEASON_TITLES = [
  'Friends', 'Dr Who', 'New Girl', 'Seinfeld', 'Breaking Bad'
].freeze

MOVIE_TITLES.each do |movie_title|
  film = Film.new(title: movie_title, plot: rand(80..140))
  movie = Films::Movie.new(film: film)
  movie.save!
end

SEASON_TITLES.each do |season_title|
  film = Film.new(title: season_title, plot: rand(80..140))
  season = Films::Season.new(film: film, number: 1)
  season.save!
end
