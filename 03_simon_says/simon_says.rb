#write your code here
def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, times = 2)
    ((string + ' ') * times).chomp(' ')
end

def start_of_word(string, index)
  string.slice(0, index)
end

def first_word(string)
  string.split[0]
end

def titleize(string)
  little_words = ['and', 'the', 'over', 'a', 'an', 'or', 'but', 'yet', 'so']
  if string.include? ' '
    joined_array = []
    string_array = string.split
    string_array.each_with_index do |word, index|
      if index == 0
        joined_array.push(word.capitalize)
      elsif little_words.include? word
        joined_array.push(word)
      else
        joined_array.push(word.capitalize)
      end
    end
    joined_array.join(' ')
  else
    string.capitalize
  end
end
