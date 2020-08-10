require 'pry'
require_relative './bank'
require_relative './member'
require_relative './account'

bank1 = Bank.new "Chase"
bank2 = Bank.new "Wells Fargo"
bank3 = Bank.new "Bank of America"

damon = Member.new "Damon", 26
tj = Member.new "TJ", 25
shelley = Member.new "Shelley", 35
sydney = Member.new "Sydney", 24

account1 = Account.new bank1, damon, 123456
account2 = Account.new bank1, tj, 234567
account3 = Account.new bank2, tj, 456789
account4 = Account.new bank3, sydney, 987321
account5 = Account.new bank2, shelley, 657892
account6 = Account.new bank2, tj, 658724

binding.pry