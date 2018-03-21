class Book
  attr_accessor :title

  def title
    little_words = ['a','an','the', #articles
                   'for','and','nor','but','or','yet','so', #conjunctions
                   'with','at','from','of','to','in','for','on','by','about']
    # if there are more than 1 word
    if @title.include? ' '
      joined_array = Array.new
      # split a string of words into an array of words (for iteration)
      title_array = @title.split
      title_array.each_with_index do |word, index|
        # always capitalize the first word
        if index == 0
          joined_array.push(word.capitalize)
        # don't capitalize little words (if not first index)
        elsif little_words.include? word and index > 0
          joined_array.push(word)
        else
          joined_array.push(word.capitalize)
        end
      end
      joined_array.join(' ')
    # if there's only one word then capitalize it right away!
    else
    @title.capitalize
    end
  end
end
