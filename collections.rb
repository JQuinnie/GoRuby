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

# indexing into array
p grocery_list.first
p grocery_list.last == grocery_list[-1]

# inserting into an array
grocery_list.insert(3, "broccoli")
p grocery_list

# removing from array (firt item, last item)
p grocery_list.shift
p grocery_list.pop
p grocery_list

# modifying
# slice and drop will not alter original array, drop removes the first n items and returns the rest
p grocery_list.slice(0, 2)
p grocery_list.drop(3)

# length and count
p grocery_list.length
p grocery_list.count
# count number of times item is in array
p grocery_list.count("egg")
# does string include item? true/false
p grocery_list.include?("egg")
