require(File.expand_path('../lib/algorithm.rb', __FILE__))

class Algorithm::Sort < ::Array
  def bubble_sort
    count = self.length - 1

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
end
