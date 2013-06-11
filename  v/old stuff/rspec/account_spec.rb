require "rspec"

require_relative "account"

describe Account do

  subject do
    Account.new("1234567890", 100)
  end

  describe "#initialize" do
    it "should raise error if passed bad acct number" do
      expect{Account.new("123afsadf")}.to raise_error(InvalidAccountNumberError)
    end
    it "should have a balance of zero if initialized without balance argument" do
      Account.new("1234567890").balance.should equal 0
    end
    its(:balance) { should equal 100}
  end

  describe "#transactions" do
    its(:transactions) { should be_instance_of Array }

    it "should have one item" do
      subject.transactions.length.should equal 1
    end

    it "should reflect starting balance passed as argument" do
      subject.transactions.first.should equal 100
    end

  end

  describe "#balance" do
    its(:balance) { should be_an Integer }

    it "should reflect deposits" do
      subject.deposit!(100).should equal 200
    end

    it "should reflect withdraws" do
      subject.withdraw!(50).should equal 50
    end
  end

  describe "#account_number" do
    its(:acct_number) { should eq "******7890" }
  end

  describe "#deposit!" do
    it "should raise an error if negative number passed as argument" do
      expect{subject.deposit!(-5000)}.to raise_error (NegativeDepositError)
    end

    it "should add to account balance the amount passed as argument and return balance" do
      subject.deposit!(100).should equal 200
    end
  end

  describe "#withdraw!" do
    it "should subtract from account the amount passed as argument" do
      subject.withdraw!(55).should equal 45
    end

    it "should raise an error if amount to be withdrawn exceeds funds in account" do
      expect{subject.withdraw!(5000000000000)}.to raise_error (OverdraftError)
    end
  end

end
