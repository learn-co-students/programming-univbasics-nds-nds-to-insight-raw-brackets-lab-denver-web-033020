$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {}
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  index = 0
  while index < nds.count do
    # get the first director
    director = nds[index][:name]
    worldwide_gross = 0

    # loop through all their movies and sum the revenue
    inner_index = 0
    while inner_index < nds[index][:movies].count do
      gross_sales = nds[index][:movies][inner_index][:worldwide_gross]
      worldwide_gross += gross_sales
      inner_index += 1
    end

    # add the sum of all movie revenue to the the hashmap for that director
    result[director] = worldwide_gross
    index += 1
  end
  return result
end
