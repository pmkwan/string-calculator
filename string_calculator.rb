class StringCalculator

  DELIMITER = ','.freeze

  def add(input_string)
    @numbers = input_string.gsub("\n", DELIMITER)

    return 0 if @numbers.empty?

    return @numbers.to_i unless @numbers.include?(',')

    @numbers.split(',').map(&:to_i).inject(:+)
  end

end