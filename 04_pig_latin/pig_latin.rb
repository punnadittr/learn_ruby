#write your code here
def translate(string)
  string_array = string.split
  translated_array = []
  string_array.each do |word|
    if word =~ /^[aeiou]/
      translated_array.push(word.insert(-1, 'ay'))
    elsif word =~ /^qu|squ/
      consonants = word.scan(/^qu|squ/).join
      translated_array.push(word.delete(consonants) + consonants + 'ay')
    elsif word =~ /^[^aeiou]{1,3}/
      consonants = word.scan(/^[^aeiou]{1,3}/).join
      translated_array.push(word.delete(consonants) + consonants + 'ay')
    end
  end
  translated_array.join(' ').rstrip
end
