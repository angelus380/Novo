# This is how you define your own custom exception classes
require_relative "transaction"

class DepositError < StandardError
end

class BankAccount
  # Contract for the BankAccount class
  # - you can access full owner's name and position, but partial IBAN
  # - you cannot access full IBAN
  # - you can print partial account infos
  # - you can print transactions only with a password
  # - you can withdraw or deposit money
  # - You can see the balance of the account (through the position variable)

  MIN_DEPOSIT =  100

  def initialize(name, iban, initial_deposit, password)
    fail DepositError, "Insufficient deposit" unless initial_deposit > MIN_DEPOSIT
    @password = password
    @transactions = []
    @position = 0
    @name, @iban = name, iban

    comfirm_acount
    add_transaction(initial_deposit)
  end

  def withdraw(amount)
    if amount <= @position
      add_transaction(-amount) # ou (amount*-1)
      "You've withdraw #{amount}"
    else
      "transaction failed!"
    end
    # TODO: Call add_transaction with the right argument
    # TODO: returns a string with a message
  end

  def deposit(amount)
    add_transaction(amount)
    "You've deposit #{amount}"
    # TODO: Call add_transaction with the right argument
    # TODO: returns a string with a message
  end

  def transactions_history(args = {})
    if args[:password] == nil
      "No password inserted"
    elsif args[:password]!= @password
      "Wrong password!"
    else
      @transactions.join("\n")
    end
    # TODO: Check if there is a password and if so if it is correct
    # TODO: return a string displaying the transactions, BUT NOT return the transaction array !
  end

  def iban
    # TODO: Hide the middle of the IBAN like FR14**************606 and return it
    "#{@iban[0..3]}"+"*"*26+"#{@iban[-3..-1]}"
  end

  def to_s
    # Method used when printing account object as string (also used for string interpolation)
    # TODO: Displays the account owner, the hidden iban and the position of the account
    "Owner: #{@name}\nIBAN: #{iban}\nPosition: #{@position}"
  end
  
  private

  def add_transaction(amount)
    @transactions << Transaction.new(amount)
    @position += amount
    
    # TODO: add the amount in the transactions array
    # TODO: update the current position (which represents the balance of the account)
  end

  def comfirm_acount
    puts "What's your name"
    @user_name = gets.chomp
    puts "What's your password"
    @user_password = gets.chomp
    comfirm
  end

  def comfirm
    if @user_name != @name || @user_password != @password
      puts "Wrong user_name or password please try again"
      comfirm_acount
  end
end


account = BankAccount.new("Bruce Lee", "FR14-2004-1010-0505-0001-3M02-606", 200, "brucelit")

puts account
account.deposit(100)
account.deposit(200)
account.deposit(30)
account.withdraw (50)
puts account.transactions_history( :password => "brucelit")
#puts account.transactions_history( :password => "tiger")
#puts account.transactions_history