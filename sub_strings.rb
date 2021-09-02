def substrings(substring, dictionary)
    result = Hash.new(0)
    low_substring = substring.downcase

    dictionary.each do |word|
        matches = low_substring.scan(word).length
        result[word] = matches unless matches == 0

    end
    result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)