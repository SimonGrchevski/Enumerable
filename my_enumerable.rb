module MyEnumerable
  def all?(block = nil)
    each do |k|
      if block.nil?
        return false unless yield k
      else
        return false unless k == block
      end
    end
    true
  end

  def any?(block = nil)
    each do |k|
      if !block.nil?
        my_boolean = false
        @enumerables.each do |i|
          my_boolean = true if i == block
        end
        return my_boolean
      elsif yield k
        return true
      end
    end
    false
  end

  def filter
    result = []
    each do |k|
      result << k if yield k
    end
    result
  end
end
