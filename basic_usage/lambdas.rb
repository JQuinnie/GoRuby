# Lambda are same as a Proc but differs in how it treats its arguments and the return keyword
# Lambdas validates number of arguments, it is stricter
# Lambda return statement is out of the block but still in the method
# Proc return statement is out of the block and method

# blocks allows us to separate action away from method
# unit conversion
to_inches = lambda {|meters| meters * 39.37}
to_feet = lambda {|meters| meters * 3.28}
to_yards = lambda {|meters| meters * 1.09}

def convert(meters, unit_lambda)
  unit_lambda.call(meters) if meters.is_a?(Numeric)
end

p convert(5, to_inches)
p convert(5, to_feet)
p convert(5, to_yards)

# array unpacking
p [10, 24, 30].map(&to_inches)
