require_relative "../string_calculator"

describe StringCalculator do

  subject { StringCalculator.new }

  describe "#add" do
    context "when input string is empty, has 1 number, or 2 numbers" do
      it "returns 0 when input string is empty" do
        expect(subject.add("")).to eq(0)
      end

      it "returns the number when input string has 1 number" do
        expect(subject.add("1")).to eq(1)
      end

      it "adds the numbers when input string has 2 numbers" do
        expect(subject.add("1,2")).to eq(3)
      end
    end
  end

end