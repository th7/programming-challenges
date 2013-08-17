var logger = function(x) {
  console.log(x)
}

var slowDouble = function(x, callback) {
  console.log('slowDouble')
  setTimeout(function() {
    callback(x * 2);
  }, 500);
}

function slowDoubleNTimes(n, x, callback) {
  if(n === 0) {
    callback(x)
    return
  }

  slowDouble(x, function(x) {
    slowDoubleNTimes(n - 1, x, callback);
  });
}

function slowDoubler(n) {
  return function(x, callback) {
            slowDoubleNTimes(n, x, callback);
          };
}

var slowDoubleTenTimes = slowDoubler(10);

slowDoubleTenTimes(3, logger)































