# hash
item = { "name" => "Bread", "quantity" => 1 }
# add item
item["brand"] = "Off Brand"
item.store("calories", 120)
p item

# see all keys in hash
p item.keys

# does the hash have a certain key?
p item.has_key?("brand")
p item.key?("brand")
p item.member?("brand")

# get value with key
p item.fetch("brand")
p item["brand"]
