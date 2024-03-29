def coffee_drink?(drink_list)
  # use #include? to return true when the drink_list (array) contains the string "coffee" or "espresso"
  options = ["coffee", "espresso"]
  drink_list.any? {|drink| options.include?(drink)}
end

def correct_guess?(guess_list, answer)
  # use #any? to return true when any element of the guess_list (array) equals the answer (number)
  guess_list.any? {|item| item==answer}
end

def twenty_first_century_years?(year_list)
  # use #all? to return true when all of the years in the year_list (array) are between 2001 and 2100
  year_list.all? {|year| year.between?(2001,2100)}
end

def correct_format?(word_list)
  # use #none? to return true when none of the words in the word_list (array) are in upcase
  def is_upper?(word)
    new_word = word.upcase
    new_word === word
  end
  
  word_list.none? {|word| is_upper?(word)}
end

def valid_scores?(score_list, perfect_score)
  # use #one? to return true when only one value in the score_list (hash) is equal to the perfect_score (number)
  puts score_list
  score_list.one? {|score, value| value === perfect_score}
end
