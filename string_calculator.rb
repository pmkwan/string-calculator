class StringCalculator

  def add(input_string)
    return 0 if input_string.empty?

    return input_string.to_i unless input_string.include?(',')

    input_string.split(',').map(&:to_i).inject(:+)
  end

end