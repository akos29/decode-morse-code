class Node
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end

tree = Node.new('START')
# 1st level
tree.left = Node.new('E')
tree.right = Node.new('T')
# 2nd level
tree.left.left = Node.new('I')
tree.left.right = Node.new('A')
tree.right.left = Node.new('N')
tree.right.right = Node.new('M')

# 3rd LEVEL
tree.left.left.left = Node.new('S')
tree.left.left.right = Node.new('U')
tree.left.right.left = Node.new('R')
tree.left.right.right = Node.new('W')

tree.right.left.left = Node.new('D')
tree.right.left.right = Node.new('K')
tree.right.right.left = Node.new('G')
tree.right.right.right = Node.new('O')

# 4th LEVEL
tree.left.left.left.left = Node.new('H')
tree.left.left.left.right = Node.new('V')
tree.left.left.right.left = Node.new('F')
tree.left.left.right.right = Node.new(' ')
tree.left.right.left.left = Node.new('L')
tree.left.right.left.right = Node.new('')
tree.left.right.right.left = Node.new('P')
tree.left.right.right.right = Node.new('J')

tree.right.left.left.left = Node.new('B')
tree.right.left.left.right = Node.new('X')
tree.right.left.right.left = Node.new('C')
tree.right.left.right.right = Node.new('Y')
tree.right.right.left.left = Node.new('Z')
tree.right.right.left.right = Node.new('Q')
tree.right.right.right.left = Node.new('')
tree.right.right.right.right = Node.new('')

def decode_char(symbol, tree)
  current_node = tree
  characters = symbol.chars
  characters.each do |character|
    case character
    when '.'
      current_node = current_node.left
    when '-'
      current_node = current_node.right
    end
  end
  current_node.value
end

def decode_word(word, tree)
  characters = word.split
  letter = ''
  characters.each do |character|
    letter += decode_char(character, tree).to_s
  end
  "#{letter} "
end

def decode(morse_code, tree)
  words = morse_code.lstrip.split('  ')
  decode_words = ''
  words.each do |word|
    decode_words += decode_word(word, tree)
  end
  puts decode_words
end

decode('.-', tree)
decode('-- -.--   -. .- -- .', tree)
decode('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...', tree)
