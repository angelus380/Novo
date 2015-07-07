class Transaction
  def initialize(amount)
    @amount = amount
    # Initialize amount and date of transaction
  end

  def to_s
    if @amount > 0
      "+#{@amount} #{Time.now.strftime("euros on %m/%d/%y at %T %p")}"
    else
      "#{@amount} #{Time.now.strftime("euros on %m/%d/%y at %T %p")}"
    end
    # Nicely print transaction infos using Time#strftime.
  end
end
