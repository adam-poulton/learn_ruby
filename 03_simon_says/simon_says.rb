#write your code here
def echo(arg)
  arg
end

def shout(arg)
  arg.to_s.upcase
end

def repeat(arg, num=2)
  result = ""
  num.times do
    result += arg + " "
  end
  result.strip
end

def start_of_word(word, num)
  word[0, num]
end

def first_word(string)
  index = string.index(" ")
  if index == nil
    return string
  else
    return string[0, index]
  end
end

def titleize(string)
  words = string.split
  littles = ['the', 'and', 'over']
  words.each do |word|
    if !littles.include?(word)
      word.capitalize!
    end
  end
  words[0].capitalize!
  words.join(" ")
end
