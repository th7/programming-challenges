require 'benchmark'

require './non_adjacent_robbery_v1'
v1 = NonAdjacentRobbery
Object.send(:remove_const, :NonAdjacentRobbery)

require './non_adjacent_robbery_v2'
v2 = NonAdjacentRobbery
Object.send(:remove_const, :NonAdjacentRobbery)

n = 1_000_00
Benchmark.bm(10) do |x|
  x.report('v' + v1.v) {n.times{v1.rob([1,2,3,4,5,6,7,8,9,0])}}
  x.report('v' + v2.v) {n.times{v2.rob([1,2,3,4,5,6,7,8,9,0])}}
end
