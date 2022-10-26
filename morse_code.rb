$morse_pattern = { '.-' => 'a', '-...' => 'b', '-.-.' => 'c', '-..' => 'd', '.' => 'e', '..-.' => 'f', '--.' => 'g',
                   '....' => 'h', '..' => 'i', '.---' => 'j', '-.-' => 'k', '.-..' => 'l', '--' => 'm', '-.' => 'n',
                   '---' => 'o', '.--.' => 'p', '--.-' => 'q', '.-.' => 'r', '...' => 's', '-' => 't', '..-' => 'u',
                   '...-' => 'v', '.--' => 'w', '-..-' => 'x', '-.--' => 'y',
                   '--..' => 'z', ' ' => ' ' }

def decode_morse(morseText)
  morse_array = morseText.split(/\s/).map { |i| $morse_pattern[i] }
  text = ''
  morse_array.each { |t|
    if (t)
      text = text + t
    else
      text = text + ' '
    end
  }
  text2 = text.split().join(' ').upcase
  return text2
end

puts(decode_morse('.-   -... --- -..-   ..-. ..- .-.. .-..          --- ..-.   .-. ..- -... .. . ...'))
