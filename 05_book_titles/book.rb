class Book
  attr_writer :title
  def title
        words = @title.split
	@title = ""
	if(words[0]== "the")
	  @title = @title + "The "
	  words = words.slice(1, words.length)
	end
        words.each do |i|
	  if(i=="and" || i=="or" || i=="the" || i=="of" || i=="in" || i=="a" || i=="an")
            @title = @title + i + " "
	  else
	    @title = @title + i.capitalize + " "
	  end
	end
	@title = @title.slice(0, @title.length-1)   
  end
end

