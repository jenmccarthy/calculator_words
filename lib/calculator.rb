def calculator(input)
  operators = {"multiplied" => "*", "times" => "*", "divided" => "/", "minus" => "-", "plus" => "+", "power" => "**"}

  operator_array = []
  result = 0

  input2 = input.split("?")
  input3 = []
  input2.each do |phrase|
    input3.push(phrase.split(" "))
  end
  input3.each do |input_array|
  # input.chop!
  # input_array = input.split(" ")
  #input_array = input2.each {|x| x.split}
  #puts input_array

    input_array.each do |word|
      if (word.to_i > 0) || operators.has_key?(word) == true
        operator_array.push(word)

      end
    end
  end
    puts operator_array
    operator_array.each do |word|
      if word == "plus"
        result = (operator_array[0].to_f) + (operator_array[2].to_f)
        operator_array = operator_array.slice(3, 4).insert(0, result)
      elsif word == "minus"
        result = (operator_array[0].to_i) - (operator_array[2].to_i)
        operator_array = operator_array.slice(3, 4).insert(0, result)
      elsif word == "divided"
        result = (operator_array[0].to_f) / (operator_array[2].to_f)
        operator_array = operator_array.slice(3, 4).insert(0, result)
      elsif word == "times"
        result = (operator_array[0].to_i) * (operator_array[2].to_i)
        operator_array = operator_array.slice(3, 4).insert(0, result)
      elsif word == "power"
        result = (operator_array[0].to_i) ** (operator_array[1].to_i)
        operator_array = operator_array.slice(3, 4).insert(0, result)
      end
    end

    # operator_array.each do |word|
    #   if word == "plus"
    #     result = (operator_array[0].to_f) + (operator_array[-1].to_f)
    #   elsif word == "minus"
    #     result = (operator_array[0].to_i) - (operator_array[-1].to_i)
    #   elsif word == "divided"
    #     result = (operator_array[0].to_f) / (operator_array[-1].to_f)
    #   elsif word == "multiplied" || word == "times"
    #     result = (operator_array[0].to_i) * (operator_array[-1].to_i)
    #   elsif word == "power"
    #     result = (operator_array[0].to_i) ** (operator_array[-2].to_i)
    #   end
    # end



    # operators.each do |key, value|
    #   operator_array.each do |word|
    #     if operators.has_key?(word)
    #       operator_array.replace(value)
    #     end
    #   end
    # end
  # puts operator_array
  # puts input_array
  result
  #puts operator_array
end
