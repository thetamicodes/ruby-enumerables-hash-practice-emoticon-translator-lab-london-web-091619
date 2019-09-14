require 'yaml'
require 'pry'

def load_library(file_path)
 library = YAML.load_file(file_path)
 emoticon_hash = { "get_meaning" => {}, "get_emoticon" => {} }
 library.each do |meaning, emoticons|
   emoticon_hash["get_meaning"][emoticons[1]] = meaning
   emoticon_hash["get_emoticon"][emoticons[0]] = emoticons[1]
 end
 emoticon_hash
end

def get_japanese_emoticon(file_path = './lib/emoticons.yml', emoticon)
 library = load_library(file_path)
 if library["get_emoticon"].include?(emoticon)
   library["get_emoticon"][emoticon]
 else
   "Sorry, that emoticon was not found"
 end
end

def get_english_meaning(file_path = './lib/emoticons.yml', japanese_emoticon)
 library = load_library(file_path)
 if library["get_meaning"].include?(japanese_emoticon)
   library["get_meaning"][japanese_emoticon]
 else
   "Sorry, that emoticon was not found"
 end
end