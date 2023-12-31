MORSE_TABLE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  ' ' => ' '
}.freeze

def decode_char(morse)
  MORSE_TABLE[morse] || ''
end

def decode_word(morse_word)
  word = ''
  morse_split = morse_word.split
  morse_split.each do |n|
    word += decode_char(n)
  end
  word
end

def decode_message(morse_message)
  message = ''
  morse_split = morse_message.split('   ')
  morse_split.each do |word|
    message += "#{decode_word(word)} "
  end
  message
end

puts decode_char('.-')
puts decode_word('-- -.--')
puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
# A BOX FULL OF RUBIES
