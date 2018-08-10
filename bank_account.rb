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
end

bank_account = BankAccount.new('client')

# transactions
bank_account.credit('Paycheck', 100)
bank_account.debit('Groceries', 40)

puts bank_account.inspect
