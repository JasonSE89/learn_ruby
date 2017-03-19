def echo(arg)
  "#{arg}"
end

def shout(arg)
  total = arg.slice(0, 1).capitalize
  i = 1
  while(i < arg.length)
    total = total + arg.slice(i, 1).capitalize
    i = i + 1;
  end
  return total
end

def repeat(arg, reps=1)
  temp = ""
  if(reps==1)
    return arg+" #{arg}"
  else
    while(reps>1)
      temp += " #{arg}"
      reps = reps - 1
    end
  end
    return arg+temp
end    

def start_of_word(word, length=1)
  word.slice(0, length)
end

def first_word(word)
  word.split.fetch(0).to_s
end

def titleize(word)
  title = ""
  if(word.include?(" ")==true)
    word = word.split
    title = word.fetch(0).to_s.capitalize
    word = word.slice(1, word.length)
    word.each do |i|
      if(i == "and" || i == "or" || i == "over" || i == "the")
        title = title + " " + i.to_s
      else
        title = title + " "+i.to_s.capitalize
      end
    end
    return title
  else
    return word.to_s.capitalize
  end
end

