class Transfer
  attr_accessor :sender, :status, :amount, :receiver

  def initialize(sender, receiver, amount)
    @receiver = receiver
    @sender = sender
    @amount = amount
    @status = "pending" 
  end

  def valid?
   if @sender.valid? && @receiver.valid?
    return true
   else 
    return false
   end
  end
 

 def execute_transaction
  if self.status == "pending" && @sender.balance > @amount && @receiver.status != "closed"
  @sender.balance -= @amount
  @receiver.balance += @amount
  self.status = "complete"
  else 
    self.status = "rejected"
    "Transaction rejected. Please check your account balance."
  end
end

def reverse_transfer 
  if self.status == "complete"
    @sender.balance += @amount
    @receiver.balance -= @amount
    self.status = "reversed"
  end
end
end
