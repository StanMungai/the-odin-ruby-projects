def caesar_cipher(str, factor)
  encrypted = str.downcase.split("").map do |char|
    if [*('a'..'z'),*('A'..'Z')].include? (char)
      cry_char = char.ord + factor
      if cry_char > "z".ord
        (cry_char -= 26).chr 
      else
        cry_char.chr 
      end
    else
      char
    end
  end
  encrypted.join.capitalize
end

puts caesar_cipher("What a string!", 5)