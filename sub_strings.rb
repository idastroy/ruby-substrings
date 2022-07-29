dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, array)
  new_string = string.downcase
  result = Hash.new
  array.each do |word|
    result[word] = new_string.scan(word).length if new_string.include?(word)
  end
  result
end

puts substrings("Below", dictionary)
  #should return { "below" => 1, "low" => 1 }

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
  #should return { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }


