def array_to_hash(array)
  #TODO: implement the method :)
  hash = {}

  array.each_with_index do |item, index|
    hash[index] = item
  end

  hash
end