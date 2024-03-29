require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:dessert1) { Dessert.new("cake", 10, "Rafa") }
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(dessert1.type).to eq("cake")
    end

    it "sets a quantity" do
      expect(dessert1.quantity).to eq(10)
    end

    it "starts ingredients as an empty array" do
      expect(dessert1.ingredients).to eq([])
    end

    it "raises an ArgumentError when given a non-integer quantity" do
      expect { Dessert.new("cake", "non_integer_quantity", "Rafa") }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dessert1.add_ingredient("ingredient")
      expect(dessert1.ingredients).to include("ingredient")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredients array" do
      dessert = Dessert.new("cake", 10, "Rafa")
      dessert.add_ingredient("flour")
      dessert.add_ingredient("sugar")
      dessert.add_ingredient("butter")
      original_order = dessert.ingredients.dup
      dessert.mix!
      expect(dessert.ingredients).not_to eq(original_order)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do 
      dessert = Dessert.new("cake", 10, "Rafa")
      dessert.eat(3)
      expect(dessert.quantity).to eq(7)
    end

    it "raises an error if the amount is greater than the quantity" do
      dessert = Dessert.new("cake", 10, "Rafa")
      expect { dessert.eat(20) }.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      dessert = Dessert.new("cake", 10, "rafa")
      expect(dessert.serve).to eq("Rafa has made 10 cakes!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      dessert = Dessert.new("cake", 10, "Rafa")
      expect(chef).to receive(:bake).with(dessert)
      dessert.make_more
    end
  end
end