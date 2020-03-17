$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  directors_total_worldwide_gross = {}
  outer_index = 0
  
  while outer_index < nds.length do
    inner_index = 0
    directors_gross = 0
    while inner_index < nds[outer_index][:movies].length do
      directors_gross += nds[outer_index][:movies][inner_index][:worldwide_gross]
      inner_index += 1 
    end
    directors_total_worldwide_gross[nds[outer_index][:name]] = directors_gross
    outer_index += 1
  end 
  
  return directors_total_worldwide_gross
  
end
