class StringCalculator

  COMMA_DELIMITER = ','.freeze

  def add(input_string)
    return 0 if input_string.empty?

    delimiter = find_delimiter(input_string)

    input_string.gsub("\n", delimiter).split(delimiter).map(&:to_i).inject(:+)
  end

  private

  def find_delimiter(input_string)
    input_string[0..1] == "//" ? input_string[2] : COMMA_DELIMITER
  end

end