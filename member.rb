class Member
    attr_reader :name, :age
    @@all = []
    def initialize name, age
        @name = name
        @age = age
        @@all << self
    end
    
    def self.all
        @@all
    end    

    def accounts
        Account.all.select do |account|
            account.member == self
        end
    end  
    
    def banks
        accounts.map do |account|
            account.bank
        end.uniq
    end        
    
    def self.members_over_25
        self.all.select do |person|
            person.age > 25
        end
    end     
    
    def self.most_accounts
        all.max_by do |member|
            member.accounts.length
        end.name
    end        

end    
