def caesar_cipher(string, num)
  res = ""
  string.each_char do |char|
    if char.between?('A', 'Z')
      res += ((char.ord - 'A'.ord + num) % 26 + 'A'.ord).chr
    elsif char.between?('a', 'z')
      res += ((char.ord - 'a'.ord + num) % 26 + 'a'.ord).chr
    else
      res += char
    end
  end
  res
end

puts caesar_cipher("What a string!", 5)
