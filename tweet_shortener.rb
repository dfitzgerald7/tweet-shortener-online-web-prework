require "pry"
# Write your code here.
def dictionary 
  my_hash = {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for"=> "4", "four"=> "4", "be" => "b","you" => "u", "at" => "@", "and" => "&"} 
end 

def word_substituter(tweet)
  tweet_array = tweet.split
  dictionary_array = dictionary 
  long_words = dictionary_array.keys
  tweet_array.collect! do |word|
    if long_words.include?(word.downcase)
      word = dictionary_array[word]      
    else 
      word = word 
    end 
  
  end 
 
  tweet_array.join(" ")
end 

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end 
end 

