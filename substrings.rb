def substrings(string, array_of_valid_substrings)
  string_downcase = string.dup.downcase
  array_downcase = array_of_valid_substrings.map { |substring| substring.downcase }

  array_downcase.each_with_object({}) do |substring, new_hash|
    count = 0
    i = 0

    while i < string_downcase.length
      new_index = string_downcase.index(substring, i)

      break unless new_index

      count += 1

      i = new_index + 1
    end

    new_hash[substring] = count if count.positive?
  end
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
dictionary2 = %w[Below Down Go Going Horn How Howdy It I Low Own Part Partner Sit]

puts substrings('below', dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
puts substrings('below', dictionary2)
puts substrings("Howdy partner, sit down! How's it going?", dictionary2)
