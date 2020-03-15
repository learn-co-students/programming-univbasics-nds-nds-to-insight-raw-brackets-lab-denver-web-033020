$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  director_i = 0
  totals = {}
  
  while director_i < nds.length do
    director_name = nds[director_i][:name]
    
    totals[director_name] = 0
      movie_i = 0
      
      while movie_i < nds[director_i][:movies].length do
        
        totals[director_name] += nds[director_i][:movies][movie_i][:worldwide_gross]
        
        movie_i += 1
      end
      
      director_i += 1
    end
    
   return totals
end

