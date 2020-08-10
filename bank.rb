class Bank
    attr_reader :name
    @@all = []
    def initialize name
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end    

    def accounts
        Account.all.select do |account|
            account.bank == self
        end    
    end   
    
    def members
        accounts.map do |account|
            account.member
        end.uniq
    end        

    def self.most_accounts
        all.max_by do |bank|
            bank.accounts.count
        end.name
    end         
  
end    
