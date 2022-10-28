def decode_morse(morse_text)
  morse_pattern = { '.-' => 'a', '-...' => 'b', '-.-.' => 'c', '-..' => 'd', '.' => 'e', '..-.' => 'f', '--.' => 'g',
                    '....' => 'h', '..' => 'i', '.---' => 'j', '-.-' => 'k', '.-..' => 'l', '--' => 'm', '-.' => 'n',
                    '---' => 'o', '.--.' => 'p', '--.-' => 'q', '.-.' => 'r', '...' => 's', '-' => 't', '..-' => 'u',
                    '...-' => 'v', '.--' => 'w', '-..-' => 'x', '-.--' => 'y',
                    '--..' => 'z', ' ' => ' ' }
  morse_array = morse_text.split(/\s/).map { |i| morse_pattern[i] }
  text = ''
  morse_array.each do |t|
    text += (t || ' ')
  end
  text.split.join(' ').upcase
end
puts(decode_morse('-- -.--   -. .- -- .'))
puts(decode_morse('.-   -... --- -..-   ..-. ..- .-.. .-..          --- ..-.   .-. ..- -... .. . ...'))
