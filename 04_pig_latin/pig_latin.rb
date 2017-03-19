def translate(statement)
  new_statement = ""
  statement = statement.split
  statement.each do |pig_word|
    new_statement = new_statement + new_word(pig_word) + " "
  end
  new_statement = new_statement.slice(0, new_statement.length-1)
  return new_statement
end
 
def new_word(word)
  i = 0
  new_word_part = ""
  beg = word.split('')
  until is_vowel(beg[i]) == true
    word = word + beg[i]
    i = i + 1
    end
      if(is_vowel(beg[0]) == true)
        word = word + "ay"
      elsif(word.include?("qu")==true)
        if(beg[0] != 'q' && beg[1] != 'u')
          word = word.slice(3, word.length) + "uay"
        else        
          word = word.slice(2, word.length) + "uay"
	end
      elsif(is_vowel(beg[0]) == true && is_vowel(beg[1]) == true)
        word = word + "ay"  
      elsif(is_vowel(beg[0]) == false)
        word = word.slice(i, word.length) + "ay"
      else
        word = word.slice(i, word.length) + "ay"
      end
  return word 
end

def is_vowel(letter)
  return letter == 'a' || letter == 'e' || letter == 'i' || letter == 'o' || letter == 'u'
end


