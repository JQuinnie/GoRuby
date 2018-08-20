class Address
  attr_accessor :kind, :street_1, :street_2, :city, :state, :postal_code

  def to_s(format = 'short')
    address = ''
    case format
    when 'long'
      address += street_1 + "\n"
      address += street_2 + "\n" unless street_2.nil?
      address += "#{city}, #{state} #{postal_code}"
    when 'short'
      address += "#{kind}: "
      address += street_1
      address += ' ' + street_2 if street_2
      address += ", #{city}, #{state}, #{postal_code}"
    end
    address
  end
end

address_one = Address.new
address_one.kind = "Home"
address_one.street_1 = "123 Main St."
address_one.city = "Denver"
address_one.state = "C0"
address_one.postal_code = "80222"

puts address_one.to_s('short')
