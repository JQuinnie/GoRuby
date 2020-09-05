# curring is know as partial application
# call a Proc with some arguments now and then the rest later

mult = -> x, y {x * y}
puts mult[2, 3]

double = mult.curry[2]
puts double[2] # 4
puts double[4] # 8

# simple promotion class
class Promotion
  def initialize(description, calculator)
    @description = description
    @calculator = calculator
  end

  def apply(total)
    total - @calculator[total]
  end
end

discount = Promotion.new("15% off everything", -> total { total * 0.15 })

ten_pc = Promotion.new(
  "10% if you spend over $50",
  -> total { total > 50 ? total * 0.1 : 0 } # this is the promotion proc
)

puts ten_pc.apply(45)
puts ten_pc.apply(60)

fifteen_pc = Promotion.new(
  "15% if you spend over $100",
  -> total { total > 100 ? total * 0.15 : 0 }
)

puts fifteen_pc.apply(60)
puts fifteen_pc.apply(150)

# create a more general calculator to make use of both 10% and 15% discount
calc = -> threshold, discount, total do
  total > threshold ? total * discount : 0
end

ten_pc_calc = calc.curry[50, 0.1]
fifteen_pc_calc = calc.curry[100, 0.15]

puts ten_pc_calc[60]
puts fifteen_pc_calc[150]

ten_pc = Promotion.new(
  "10% if you spend over $50",
  ten_pc_calc
)

puts ten_pc.apply(100)

fifteen_pc = Promotion.new(
  "15% if you spend over $100",
  fifteen_pc_calc
)

puts fifteen_pc.apply(150)
