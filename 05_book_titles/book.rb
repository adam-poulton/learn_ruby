class Book
# write your code here
  attr_reader :title

  def title=(title)
    littles = %w{a an and the in of}
    words = title.split.map do |word|
      if littles.include?(word)
        word
      else
        word.capitalize
      end
    end
    @title = ([words[0].capitalize] + words[1..-1]).join(" ")
  end
end
