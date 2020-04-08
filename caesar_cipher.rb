def caesar_cipher (word, shift_factor)
    uppercase_checker = ("A".."Z").to_a
    lowercase_checker = ("a".."z").to_a
  
    encrypted_word = Array.new()
    word.split("").each do |letter|
      if !uppercase_checker.include?(letter) && !lowercase_checker.include?(letter)
        encrypted_word << letter
      elsif uppercase_checker.include?(letter)
        new_index = (uppercase_checker.index(letter) + shift_factor) % 26
        encrypted_word << uppercase_checker[new_index]
      else
        new_index = (lowercase_checker.index(letter) + shift_factor) % 26
        encrypted_word << lowercase_checker[new_index]
      end
    end
    encrypted_word.join
  end
  
  caesar_cipher("What a string!", 5)