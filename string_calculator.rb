class StringCalculator

  COMMA_DELIMITER = ','.freeze

  def add(input_string)
    @numbers = input_string

    return 0 if @numbers.empty?

    raise_exception if @numbers.include?('-')

    numbers.inject(:+)
  end

  private

  def numbers
    delimiter = find_delimiter

    @numbers.gsub("\n", delimiter).split(delimiter).map(&:to_i)
  end

  def find_delimiter
    @numbers[0..1] == "//" ? @numbers[2] : COMMA_DELIMITER
  end

  def raise_exception
    raise "negatives not allowed: " + numbers.select{ |num| num < 0 }.join(", ")
  end

end