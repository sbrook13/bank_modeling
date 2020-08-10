class Account
    attr_reader :bank, :member, :number
    @@all = []

    def initialize bank, member, number
        @bank = bank
        @member = member
        @number = number
        @@all << self
    end
    
    def self.all
        @@all
    end    

end    