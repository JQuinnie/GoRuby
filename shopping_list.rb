# create a list
def create_list
  print 'What is the list name? '
  name = gets.chomp

  hash = { 'name' => name, 'items' => [] }
  hash
end

# add item to list
def add_list_item
  print 'What is the item called? '
  item_name = gets.chomp

  hash = { 'name' => name }
  hash
end

list = create_list
puts list.inspect
