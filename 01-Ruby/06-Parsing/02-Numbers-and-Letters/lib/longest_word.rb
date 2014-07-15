require 'open-uri'
require 'json'

def generate_grid(grid_size)
  letters =("A".."Z").to_a
  grid = []
  for i in (1..grid_size)
  grid << letters.sample
  #grid_size.times { grid << ("A".."Z").to_a.sample }
  #Grid = Array.new(grid_size) {"A".."Z").to_a.sample }
  end
  grid
  #TODO: generate random grid of letters
end

def run_game(attempt, grid, start_time, end_time)
  hash = {}
  if check_if_included?(attempt, grid)
    if translation(attempt).nil?
      hash[:translation] = nil
      hash[:time] = start_time - end_time
      hash[:score] = 0
      hash[:message] = "not an english word"
    else
      hash[:translation] = translation(attempt)
      hash[:time] = start_time - end_time
      hash[:score] = "#{attempt.split("").count - 1.to_f / (start_time - end_time)}"
      hash[:message] = "well done"
    end
  else
    hash[:translation] = translation(attempt)
    hash[:time] = start_time - end_time
    hash[:score] = 0
    hash[:message] = "not in the grid"
  end
  return hash
end


  def check_if_included?(attempt, grid)
  attempt = attempt.upcase
  attempt_array = attempt.split("")
  attempt_array.all? { |x| grid.include?(x)}
  #attempt_array.all? { |x| attempt_array.count(x) <= grid.count(grid)}
  end

  def translation(attempt)
    translated_word = ""
    api_url = "http://api.wordreference.com/0.8/80143/json/enfr/#{attempt}"
    api_return = {}
      open(api_url) do |stream|
      api_return = JSON.parse(stream.read)
      end

      if api_return.has_value? "NoTranslation"
        translated_word = nil
      else
        translated_word = api_return["term0"]["PrincipalTranslations"]["0"]["FirstTranslation"]["term"]
      end

    return translated_word
  end



