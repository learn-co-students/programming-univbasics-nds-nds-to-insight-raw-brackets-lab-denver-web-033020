$LOAD_PATH.unshift(File.dirname(__FILE__))
require "pp"
require 'directors_database'

def directors_totals(nds)
  results ={}
  director_index=0
  while director_index<directors_database.length do
    director_name=directors_database[director_index][:name]
    results[director_name]=0
     movie_index =0 
    while movie_index<directors_database[director_index][:movies].length do
      results[director_name]+=directors_database[director_index][:movies][movie_index][:worldwide_gross]
      movie_index+=1
  end
    director_index +=1
  end

  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
   # "Stephen Spielberg"=>
   # "Russo Brothers"=>
   # "James Cameron"=>
   # "Spike Lee"=>
   # "Wachowski Siblings"=>
   # "Robert Zemeckis"=>
    #"Robert Zemeckis"=>
    #"Quentin Tarantino"=>
    #"Martin Scorsese"=>
    #"Francis Ford Coppola"=>
    
    
    
    
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
  results
end

