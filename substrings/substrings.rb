def substrings(string, dictionary)
  res = {}
  dictionary.each do |word|
    res[word] = string.scan(word).length if string.include?(word)
  end
  res
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
puts substrings("below", dictionary)
