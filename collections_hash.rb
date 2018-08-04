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
