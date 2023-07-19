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
  characters.each { |char| text+= decode_morse_character(char)}
  print text
  text
end

def morse_to_text(morsetext)
  words = morsetext.split('   ')
  decode_morse_word(words[0])
    # def change_characters
        
    # characters.each_with_index { |char, i| characters[i] = Morse_equals[char] || '' }
    # print characters
end

morse_to_text('-- -.--   -. .- -- .')