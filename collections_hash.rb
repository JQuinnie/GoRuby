# hash
item = { "name" => "Bread", "quantity" => 1 }
# add item
item["brand"] = "Off Brand"
item.store("calories", 120)
p item

# see all keys and values in hash
p item.keys
p item.values

# does the hash have a certain key?
p item.has_key?("brand")
p item.key?("brand")
p item.member?("brand")

# get value with key
p item.fetch("brand")
p item["brand"]

# does the hash have a certain value?
p item.has_value?(1)
p item.value?(1)
p item.values_at("name", "quantity")


# hash methods
puts "Hash: #{item.inspect}"
p "Hash length: #{item.length}"

# invert will swap keys and values, but does not change original hash
p item.invert

# shift will remove first key and value pair
p item.shift.inspect
p item

# merge another hash with original
grocery_item = { "item" => "Bread", "quantity" => 1, "brand" => "Treehouse Bread Company" }
calories = { "calories" => 100 }
final_item = grocery_item.merge(calories)
p final_item
