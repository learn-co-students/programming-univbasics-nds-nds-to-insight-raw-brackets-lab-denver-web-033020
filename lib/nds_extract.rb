$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'


def directors_totals(nds)
  dir_index = 0 
  totals_hash = {}
  
  
while dir_index < nds.length do
  dir_name = nds[dir_index][:name]
  # the name for our new hash will be a given index in nds' [:name]
    totals_hash[dir_name] = 0 
    title_index = 0
#first part of the hash (the name)    
    
   while title_index < nds[dir_index][:movies].length do
    # runs for each movie a given director made
    totals_hash[dir_name] += nds[dir_index][:movies][title_index][:worldwide_gross]

    
    title_index += 1
    end

    dir_index += 1
  end
#inner loop runs first. title index keeps going up, giving a new :worldwide_gross 
  
    
  totals_hash
end
  