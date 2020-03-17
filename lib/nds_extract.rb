$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  director_gross = {}
  
  director_count = 0 
  while director_count < directors_database.length do
    movie_count = 0 
    gross = 0 
    while movie_count < directors_database[director_count][:movies].length do
      gross += directors_database[director_count][:movies][movie_count][:worldwide_gross]
      movie_count += 1 
    end 
    director_gross[directors_database[director_count][:name]] =  gross
    

    director_count += 1 
  end
  return director_gross
  
  
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  nil
end


