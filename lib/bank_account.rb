class BankAccount
    attr_reader :name
    attr_accessor :status, :balance
    @@all = []

    def initialize(name)
        @name = name
        @status = "open"
        @balance = 1000
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def deposit(currency)
        self.balance += currency
    end

    def display_balance
        "Your balance is $#{self.balance}."
    end

    def valid?
        self.status == "open" && self.balance > 0
    end

    def close_account
        self.status = "closed"
    end
end
