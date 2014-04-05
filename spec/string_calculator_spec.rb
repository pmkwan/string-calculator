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

    context "when input string has an unknown amount of numbers" do
      it "adds up all the numbers correctly in the string" do
        expect(subject.add("10,20,30,40,50,60")).to eq(210)
      end
    end

    context "when input string has new lines between numbers" do
      it "handles new lines between numbers" do
        expect(subject.add("2\n2")).to eq(4)
      end

      it "handles new lines and commas between numbers" do
        expect(subject.add("1\n2\n3,4,5\n6")).to eq(21)
      end
    end

    context "handles some other delimiters" do
      it "can use ; as the delimiter" do
        expect(subject.add("//;\n1;2")).to eq(3)
      end

      it "can use | as the delimiter" do
        expect(subject.add("//|\n1|2")).to eq(3)
      end
    end

    context "when negative numbers are present" do
      it "raises exception with message" do
        expect{ subject.add("-2, -3")}.to raise_error(RuntimeError, "negatives not allowed: -2, -3")
      end

    end
  end

end