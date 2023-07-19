# method to decode a Morse code character, takes a string parameter, and return the corresponding character in uppercase
def decode_morse_character(morse_character)
  @morse_equals = {
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
    '--..' => 'Z'
  }
  @morse_equals[morse_character] || ''
end

# method to decode an entire word in Morse code
def decode_morse_word(morse_word)
  @text = ""
  characters = morse_word.split(' ')
  characters.each do |char|
    @text += decode_morse_character(char)
  end
  # print @text
  @text
end

# Create a method to decode the entire message in Morse code
def morse_to_text(morsetext)
  @phrase = ""
  words = morsetext.split('   ')
  words.each do |word|
    @phrase += decode_morse_word(word) + " "
  end
  print @phrase
  @phrase[0..-1]
end

morse_to_text('-- -.--   -. .- -- .')