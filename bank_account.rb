class BankAccount
  attr_reader :name
  # initialize method takes one argument and sets @name as an instance variable on initialization
  def initialize(name)
    @name = name
    @transactions = []
    add_transaction('Beginning Balance', 0)
  end

  # method for adding transaction
  def add_transaction(description, amount)
    @transactions.push(description: description, amount: amount)
  end
end

bank_account = BankAccount.new('client')
bank_account.add_transaction('Groceries', 40)
puts bank_account.inspect
