class DistanciaEntreSequencias

  def self.calcular(string_1,string_2)
    raise ArgumentError if string_1.size != string_2.size
    array_string_splitted_1 = string_1.scan /[\w[:space:]]/
    array_string_splitted_2 = string_2.scan /[\w[:space:]]/
    array_string_result = array_string_splitted_1.select.with_index { |val, index| val if array_string_splitted_2[index] != val }
    array_string_result.size
  end

end
