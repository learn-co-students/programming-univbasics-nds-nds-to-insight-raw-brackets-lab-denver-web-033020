$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  index = 0 
  totals = {}
  while index < nds.length do
    name = nds[index][:name]
    totals[name] = 0 
    movie = 0 
    while movie < nds[index][:movies].length do
      totals[name] += nds[index][:movies][movie][:worldwide_gross]
      movie += 1 
end
      index += 1 
end 
    totals
end 

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