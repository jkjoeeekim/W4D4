def my_uniq(arr)
  new_arr = []
  arr.each do |ele|
    (new_arr << ele) unless new_arr.include?(ele)
  end
  new_arr
end

class Array
  def two_sum
    new_arr = []
    (0...(length - 1)).each do |idx1|
      ((idx1 + 1)...length).each do |idx2|
        new_arr << [idx1, idx2] if (self[idx1] + self[idx2]).zero?
      end
    end
    new_arr
  end
end