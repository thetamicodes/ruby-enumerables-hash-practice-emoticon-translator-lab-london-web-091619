require 'yaml'
require 'pry'

def load_library(file_path)
  hash = {:get_meaning => {}, :get_emoticon => {}}
  file_path = './lib/emoticons.yml'
  emoticons = YAML.load_file(file_path)
  emoticons.each do |key, value|
    hash[:get_meaning][value[1]] = key
    hash[:get_emoticon][value[0]] = value[1] 
  end
  return hash 
  binding.pry
end

def get_japanese_emoticon(file_path, emoticon)
  load_library.each do |meaning_hash, emoticon_hash|
  # binding.pry 
  end
end

def get_english_meaning(file_path, emoticon)
 
end