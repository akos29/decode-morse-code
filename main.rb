
class Node 
  def initialize(self, value, left, right)
    @self.value  = value
    @self.left = left
    @self.right = right
  end
end

tree = Node('START')
# 1st level
tree.left = Node('E')
tree.right = Node('T')
# 2nd level
tree.left.left = Node('I')
tree.left.right = Node('A')
tree.right.left = Node('N')
tree.right.right = Node('M')

#3rd LEVEL
tree.left.left.left = Node('S')
tree.left.left.right = Node('U')
tree.left.right.left = Node('R')
tree.left.right.right = Node('W')

tree.right.left.left = Node('D')
tree.right.left.right = Node('K')
tree.right.right.left = Node('G')
tree.right.right.right = Node('O')

#4th LEVEL
tree.left.left.left.left = Node('H')
tree.left.left.left.right = Node('V')
tree.left.left.right.left = Node('F')
tree.left.left.right.right = Node(' ')
tree.left.right.left.left = Node('L')
tree.left.right.left.right = Node('')
tree.left.right.right.left = Node('P')
tree.left.right.right.right = Node('J')

tree.right.left.left.left = Node('B')
tree.right.left.left.right = Node('X')
tree.right.left.right.left = Node('C')
tree.right.left.right.right = Node('Y')
tree.right.right.left.left = Node('Z')
tree.right.right.left.right = Node('Q')
tree.right.right.right.left = Node('')
tree.right.right.right.right = Node('')

morseCode = ''

symbols = morseCode.split
puts symbols

for symbol in symbols:
  currentNode = tree
  for character in symbol:
    if character == "."
      currentNode= currentNode.left
    elseif character== "-"
      currentNode = currentNode.right
    end
  letter = currentNode.value
  message = message = letter

puts message

