module Algorithms
  class Sort
    def self.insertion(array = [])
      return array if array.length < 2

      1.upto array.size - 1 do |index|
        element = array[index]
        ref = index - 1

        while ref >= 0 and array[ref] > element do
          array[ref + 1] = array[ref]
          ref = ref - 1
        end

        array[ref + 1] = element
      end

      array
    end
  end
end
