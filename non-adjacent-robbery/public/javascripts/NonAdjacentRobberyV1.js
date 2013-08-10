NonAdjacentRobbery = {
  v: 1,
  even_sum: function(array) {
    var sum = 0
    for(var i=0; i < array.length; i++) {
      if (i % 2 == 0) sum += array[i]
    }
    return sum
  },
  odd_sum: function(array) {
    var sum = 0
    for(var i=0; i < array.length; i++) {
      if (i % 2 == 1) sum += array[i]
    }
    return sum
  },
  rob: function(array) {
    if (array.length == 0) {
      return 0
    } else if (array.length == 1) {
      return array[0]
    } else {

      var i = 0

      if (this.even_sum(array) < this.odd_sum(array)) {
        if (array.length <= 3 || array[3] <= array[2] + array[1] || array[0] <= array[1]) {
          i = 1
        }
      }

      var val = array[i]

      if (i == 1) {
        array.splice(0,3)
      } else {
        array.splice(0,2)
      }

      return val + this.rob(array)
    }
  }
}
