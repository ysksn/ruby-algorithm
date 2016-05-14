class Algorithm::Sort < ::Array
  def bubble_sort
    count = length - 1

    loop do
      swapped = false

      count.times do |i|
        next_index = i + 1
        next if (self[i] <=> self[next_index]) == -1
        self[i], self[next_index] = self[next_index], self[i]
        swapped                   = true
      end

      break unless swapped
    end

    self
  end

  def self.merge(left, right)
    result = []

    until left.empty? || right.empty?
      left.first <= right.first ? result << left.shift : result << right.shift
    end

    result + left + right
  end

  def merge_sort
    return self if length <= 1
    mid   = length / 2
    left  = self[0...mid]
    right = self[mid..length]
    Algorithm::Sort.merge(left.merge_sort, right.merge_sort)
  end
end
