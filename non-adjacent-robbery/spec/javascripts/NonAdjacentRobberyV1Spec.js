describe('NonAdjacentRobberyV1', function() {
  var v1;

  beforeEach(function() {
    v1 = NonAdjacentRobbery
  })
  describe('.even_sum', function() {
    it('returns the sum of elements at even indices', function() {
      expect(v1.even_sum([1,2,3,4,5])).toEqual(9)
    })
  })

  describe('.odd_sum', function() {
    it('returns the sum of elements at odd indices', function() {
      expect(v1.odd_sum([1,2,3,4,5])).toEqual(6)
    })
  })

  describe('.rob', function() {
    it('returns the maximum value of robbing non-adjacent houses', function() {
      expect(v1.rob([1])).toEqual(1)

      expect(v1.rob([1,2])).toEqual(2)
      expect(v1.rob([2,1])).toEqual(2)

      expect(v1.rob([1,2,3])).toEqual(4)
      expect(v1.rob([3,2,1])).toEqual(4)
      expect(v1.rob([2,3,2])).toEqual(4)
      expect(v1.rob([3,2,3])).toEqual(6)
      expect(v1.rob([10,1,10])).toEqual(20)

      expect(v1.rob([1,2,3,4])).toEqual(6)
      expect(v1.rob([4,3,2,1])).toEqual(6)
      expect(v1.rob([1,3,4,2])).toEqual(5)
      expect(v1.rob([4,1,2,3])).toEqual(7)
      expect(v1.rob([10,1,2,3])).toEqual(13)
      expect(v1.rob([1,3,10,2])).toEqual(11)

      expect(v1.rob([1,2,3,4,5])).toEqual(9)
      expect(v1.rob([5,4,3,2,1])).toEqual(9)
      expect(v1.rob([1,4,5,3,2])).toEqual(8)
      expect(v1.rob([5,3,1,2,4])).toEqual(10)
      expect(v1.rob([1,4,10,3,2])).toEqual(13)
      expect(v1.rob([10,3,1,2,10])).toEqual(21)

      expect(v1.rob([1,2,3,4,5,6])).toEqual(12)
      expect(v1.rob([6,5,4,3,2,1])).toEqual(12)
      expect(v1.rob([6,4,2,1,3,5])).toEqual(13)
      expect(v1.rob([1,3,5,6,4,2])).toEqual(11)
      expect(v1.rob([10,4,2,1,3,10])).toEqual(22)
      expect(v1.rob([1,3,5,10,4,2])).toEqual(15)

      expect(v1.rob([1,2,3,4,5,6,7])).toEqual(16)
      expect(v1.rob([7,6,5,4,3,2,1])).toEqual(16)
      expect(v1.rob([6,4,2,1,3,5,7])).toEqual(18)
      expect(v1.rob([1,3,5,7,6,4,2])).toEqual(14)
      expect(v1.rob([15,4,2,1,3,5,15])).toEqual(35)
      expect(v1.rob([1,3,5,15,6,4,2])).toEqual(22)
    })
  })
})
