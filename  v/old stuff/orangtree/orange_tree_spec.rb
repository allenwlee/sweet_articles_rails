require 'rspec'

require_relative './orange_tree'

describe OrangeTree do
    before(:each) { 
      @orange_tree = OrangeTree.new
      @orange = Orange.new
    }
  
  it "should be a fucking orange tree" do 
    @orange_tree.class.should eq(OrangeTree);
  end


    subject { @orange_tree }
    it { should respond_to :age }
    it { should respond_to :height }
    it { should respond_to :dead }
    it { should respond_to :age! }
    it { should respond_to :oranges }

  context " it has one orange"
    @orange_tree = OrangeTree.new
    @orange = Orange.new
    @orange_tree.oranges << @orange
    it "should have an orange" do 
      
      @orange_tree.oranges[0].should_be @orange
    end

end

describe Orange do
  before(:each) { @orange = Orange.new }
  
  it "should be a fucking orange" do 
    @orange.class.should eq(Orange);
  end



end
