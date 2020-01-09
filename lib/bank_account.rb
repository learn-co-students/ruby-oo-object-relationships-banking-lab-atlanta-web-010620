class BankAccount
    # getters/setters 
    # attr_accessor :balance
    attr_reader :name
    attr_accessor :balance, :status 

    # initialize
    def initialize(name) 
        @name = name 
        @balance = 1000
        @status = 'open' 
    end

    # instance methods 

    def deposit(input)
        @balance+=input
    end

    def display_balance
        "Your balance is $#{@balance}."
    end  
    
    def valid? 
        if @status == 'open' && @balance > 0 
            return true 
        else 
            return false 
        end
    end

    def close_account 
        @status = 'closed'
        @status
    end
end
