
require "byebug"

def element_count(array)
  hash = Hash.new(0)
  array.each { |el| hash[el] += 1 }
  hash
end

def char_replace!(string, hash)
  string
  string.each_char.with_index do |char, idx|
    string[idx] = hash[char] if hash.has_key?(char)
  end
  string
end

def product_inject(array)
  array.inject { |acc, el| acc * el }
end
