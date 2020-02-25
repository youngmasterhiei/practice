def my_reject(array, &prc)
  newArr = array.select { |el| !prc.call(el) }
end

def my_one?(array, &prc)
  newArr = array.select { |el| prc.call(el) }

  newArr.length == 1 ? true : false
end

def hash_select(hash, &prc)
  newHash = Hash.new(0)
  hash.each { |k, v| newHash[k] = v if prc.call(k, v) }
  newHash
end

def move_zeroes(nums)
  p "hi"
  nums.each.with_index do |num, idx|
    if num == 0
      nums.delete(idx)
      nums << num
    end
  end
  nums
end

p move_zeroes([0, 2, 3, 4, 0])
