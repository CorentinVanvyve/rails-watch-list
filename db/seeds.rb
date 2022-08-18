require 'open-uri'
require 'json'

puts "Cleaning database"

Movie.destroy_all

puts "Creation of movies"


url = "https://tmdb.lewagon.com/movie/top_rated"
user_serialized = URI.open(url).read
dico = JSON.parse(user_serialized)

20.times do
  dico["results"].each do |movie|
    mov = Movie.create(title: movie["original_title"], overview: movie["overview"], poster_url: movie["poster_path"], rating: movie["vote_average"])
    puts mov
  end
end
