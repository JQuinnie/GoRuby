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

  # to string method
  def to_s
    "Name: #{name}, Balance: #{sprintf("%0.2f", balance)}"
  end
end

bank_account = BankAccount.new('client')

# transactions
bank_account.credit('Paycheck', 100)
bank_account.debit('Groceries', 40)
# print out balance
puts bank_account
