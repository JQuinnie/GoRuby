class BankAccount
  attr_reader :name
  # initialize method takes one argument and sets @name as an instance variable on initialization
  def initialize(name)
    @name = name
    @transactions = []
    add_transaction('Beginning Balance', 0)
  end

  # create a credit method
  def credit(description, amount)
    add_transaction(description, amount)
  end

  # create a debit method
  def debit(description, amount)
    add_transaction(description, -amount)
  end

  # method for adding transaction
  def add_transaction(description, amount)
    @transactions.push(description: description, amount: amount)
  end

  # method to calculate balance
  def balance
    # create local variable
    balance = 0
    @transactions.each do |transaction|
      balance += transaction[:amount]
    end
    return balance
  end

  # to string method - a convention called by Ruby when object wants to be formatted as a string
  # when using puts method, internally Ruby is calling to string on it or to_s, the method below will override it
  def to_s
    "Name: #{name}, Balance: #{sprintf("%0.2f", balance)}"
  end

  def print_register
    puts "#{name}'s Bank Account"
    puts "Description\tAmount"
    @transactions.each do |transaction|
      puts transaction[:description] + "\t" + sprintf("%0.2f", transaction[:amount])
    end
    puts "Balance: #{sprintf("%0.2f", balance)}"
  end
end

bank_account = BankAccount.new('client')

# transactions
bank_account.credit('Paycheck', 100)
bank_account.debit('Groceries', 40)
# print out balance
puts bank_account
puts 'Register:'
bank_account.print_register
