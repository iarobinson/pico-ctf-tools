def convert_rot_13 string
  first_half_of_alphabet = "abcdefghijklm"
  second_half_of_alphabet = "nopqrstuvwxyz"

  cipher = Hash.new
  first_half_of_alphabet.each_char.with_index do |letter, i|
    cipher[letter] = second_half_of_alphabet[i]
  end
  second_half_of_alphabet.each_char.with_index do |letter, i|
    cipher[letter] = first_half_of_alphabet[i]
  end
  first_half_of_alphabet.upcase.each_char.with_index do |letter, i|
    cipher[letter] = second_half_of_alphabet[i].upcase
  end
  second_half_of_alphabet.upcase.each_char.with_index do |letter, i|
    cipher[letter] = first_half_of_alphabet[i].upcase
  end

  result = ""
  string.split("").each do |character|
    if cipher[character]
      result += cipher[character]
    else
      result += character
    end
  end

  result
end

dats  = "cvpbPGS{arkg_gvzr_V'yy_gel_2_ebhaqf_bs_ebg13_uJdSftmh}"

p convert_rot_13 dats
