$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

pp directors_database

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #result = { }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  
  hash = { }
  director_index = 0
  
  while director_index<nds.length do
    director = nds[director_index]
    
    
    #pp director_index
    #pp director_name
    
    total=0
    inner_index=0
    
    while inner_index < director[:movies].length do
      total += director[:movies][inner_index][:worldwide_gross]
      
      #pp inner_index
      
      #pp total
      
      inner_index += 1
      
    end
    
    #pp total
    
    hash[director[:name]] = total
    
    director_index += 1
    
  end
  

  return hash
  
end
