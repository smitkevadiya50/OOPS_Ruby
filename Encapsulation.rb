=begin
In this example, we're creating a BankAccount class. 
The balance variable is encapsulated in the BankAccount class. 
It is a private attribute and can only be accessed and changed through the methods provided by the class - deposit and withdraw.
=end
class BankAccount
  # Initialize BankAccount with a balance
  def initialize(balance)
    @balance = balance # Instance variable
  end

  # Getter method to see balance
  def balance
    @balance
  end

  # Setter method to deposit money
  def deposit(amount)
    @balance += amount
  end

  # Setter method to withdraw money
  def withdraw(amount)
    if amount > @balance
      puts "Insufficient funds"
    else
      @balance -= amount
    end
  end
end

account = BankAccount.new(1000)
account.deposit(500)
account.withdraw(200)
puts account.balance # 1300
