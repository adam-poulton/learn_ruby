#write your code here
def translate(s)
  vowels = %w(a e i o u)
  specials = %w(. , ! ? : ;)
  words = s.split.map do |x|
    word = x
    is_capital = word[0].capitalize == word[0]
    if specials.include?(word[word.length - 1])
      # the last letter is punctuation
      punctuation = word[word.length - 1]
      is_special = true
    end

    if word[0,2].downcase == 'qu'
      out = word[2, word.length] + word[0, 2] + 'ay'
    elsif vowels.include?(word[0].downcase)
      out = word + 'ay'
    elsif word[1,2].downcase == 'qu'
      out = word[3, word.length] + word[0, 3] + 'ay'
    elsif vowels.include?(word[1].downcase)
      out = word[1, word.length] + word[0, 1] + 'ay'
    elsif vowels.include?(word[2].downcase)
      out = word[2, word.length] + word[0, 2] + 'ay'
    elsif vowels.include?(word[3].downcase)
      out = word[3, word.length] + word[0, 3] + 'ay'
    end

    if is_capital
      out = out.capitalize
    end

    if is_special
      out = out.gsub(/[!?,.;:]/, '')
      out = out + punctuation
    end

    out
  end
  words.join(' ')
end