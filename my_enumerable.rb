module MyEnumerable
  def all?(block = nil)
    @enumerables.each do |k|
      if block.nil?
        return false unless yield k
      else
        return false unless re == block
      end
    end
    true
  end

  def any?(block = nil)
    @enumerables.each do |k|
      if !block.nil?
        my_boolean = false
        arr.each do |i|
          my_boolean = true if i == block
        end
        return my_boolean
      elsif yield k
        return true
      end
    end
    false
  end
end
