def score_is_one_hundred (word)
    alphabet = ('a'..'z').to_a
    score = word.downcase.split
        .select {|x| alphabet.include?(x)}
        .map {|char| alphabet.find_index(char) + 1}
        .reduce {|char1, char2| char1 + char2}
    score === 100 ? true : false
end

p score_is_one_hundred("quarter");
p score_is_one_hundred("abc");

file_data = File.read("words.txt").split.each do |word|
    if score_is_one_hundred(word)
        p word
    end
end
