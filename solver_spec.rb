require "solver"
require "rspec"

RSpec.describe Solver do
  subject(:solver) { described_class.new }

  describe "#factorial" do
    context "with negative input" do
      it "raises an error" do
        expect { solver.factorial(-1) }.to raise_error(RuntimeError)
      end
    end

    context "with positive input" do
      it "returns the correct factorial" do
        expect(solver.factorial(0)).to eq(1)
        expect(solver.factorial(1)).to eq(1)
        expect(solver.factorial(2)).to eq(2)
        expect(solver.factorial(3)).to eq(6)
        expect(solver.factorial(4)).to eq(24)
      end
    end
  end

  describe "#reverse" do
    it "returns the reversed string" do
      expect(solver.reverse("hello")).to eq("olleh")
      expect(solver.reverse("world")).to eq("dlrow")
      expect(solver.reverse("apple")).to eq("elppa")
    end
  end

  describe "#fizzbuzz" do
    it "returns the correct string based on the rules" do
      expect(solver.fizzbuzz(3)).to eq("fizz")
      expect(solver.fizzbuzz(5)).to eq("buzz")
      expect(solver.fizzbuzz(15)).to eq("fizzbuzz")
      expect(solver.fizzbuzz(7)).to eq("7")
    end
  end
end
