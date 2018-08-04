# array
grocery_list = ["milk", "egg", "bread"]
# array of strings
farmers_list = %w(apples oranges tomatoes)
# array of strings with interpolation
item = "honey"
farmers_list = %W(#{item} apples oranges tomatoes)

# append item to array
grocery_list << "carrots"
grocery_list.push("potatoes")
grocery_list += ["celery", "mushroom"]

# add item to the beginning of array
grocery_list.unshift("cheese")

p grocery_list
p farmers_list
