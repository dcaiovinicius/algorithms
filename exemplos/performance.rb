require 'benchmark'

require_relative '../lib/algorithms'

def make_array(number)
  Array.new(number) { rand(number) }
end

Benchmark.bm do |b|
  array = make_array(10000)

  b.report('Insertion sort') do
    Algorithms::Sort.insertion(array)
  end
end
