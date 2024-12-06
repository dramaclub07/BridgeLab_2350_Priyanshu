1455. Check If a Word Occurs As a Prefix of Any Word
 in a Sentence


# @param {String} sentence
# @param {String} search_word
# @return {Integer}
def is_prefix_of_word(sentence, search_word)
    words = sentence.split
    lw= search_word.length

    words.each_with_index do |word, index|
        if word.length >= lw && word[0...lw] == search_word
            return index + 1
        end
     end

    -1

end