$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
require 'pry'
 # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"result = {}
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  
# pp directors_database
 #p directors_database[0][:movies][][:worldwide_gross]
  #p directors_database[0][:name]



 

 

def directors_totals(nds)
hash = {}
i = 0 
while i < nds.length do 
  director_name = nds[i][:name]
  hash[director_name] = 0
n = 0 
  while n < nds[i][:movies].length
  hash[director_name] += nds[i][:movies][n][:worldwide_gross]
  n += 1 
end
i += 1
end 
hash 
end




