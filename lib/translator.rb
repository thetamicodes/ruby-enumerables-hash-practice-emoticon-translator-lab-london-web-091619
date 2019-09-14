require 'yaml'
require 'pry'

file_path = './lib/emoticons.yml'

def load_library(file_path)
  hash = {:get_meaning => {}, :get_emoticon => {}}
  emoticons_file = YAML.load_file(file_path)
  emoticons_file.each do |key, value|
    hash[:get_meaning][value[1]] = key
    hash[:get_emoticon][value[0]] = value[1] 
  end
  hash 
  # binding.pry
end

def get_japanese_emoticon(file_path = './lib/emoticons.yml', english_emoticon)
 library = load_library(file_path)
 if library["get_emoticon"].include?(english_emoticon)
   library["get_emoticon"][english_emoticon]
 else
   "Sorry, that emoticon was not found"
 end
end
end

def get_english_meaning(file_path, emoticon)
 
end