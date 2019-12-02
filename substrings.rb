dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(sentence, dictionary)
    sentence.downcase!
    words_in_sentence = sentence.split(' ')

    substrings = Hash.new(0)

    dictionary.each do |dictionary_word|
        words_in_sentence.each do |sentence_word|

            substrings[dictionary_word] += 1 if sentence_word.include?(dictionary_word)

        end
    end

    return substrings
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)