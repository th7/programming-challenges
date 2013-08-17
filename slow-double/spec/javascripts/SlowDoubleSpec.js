describe("SlowDouble", function() {
  var spy

  beforeEach(function() {
    spy = jasmine.createSpy('spy')
    jasmine.Clock.useMock();
  })

  describe('slowDouble', function() {

    it('is defined', function() {
      expect(slowDouble).toBeDefined()
    })

    it('calls a callback', function() {
      slowDouble(1, spy)
      jasmine.Clock.tick(1000)
      expect(spy).toHaveBeenCalled()
    })

    it('calls a callback with double the first argument', function() {
      slowDouble(1, spy)
      jasmine.Clock.tick(1000)
      expect(spy).toHaveBeenCalledWith(2)
    })
  })

  describe('slowDoubleTenTimes', function() {
    it('is defined', function() {
      expect(slowDoubleTenTimes).toBeDefined()
    })

    it('calls slowDouble ten times', function() {
      spyOn(window, 'slowDouble').andCallThrough()
      slowDoubleTenTimes(1, spy)
      jasmine.Clock.tick(6000)
      expect(slowDouble.calls.length).toEqual(10)
    })

    it('calls a callback with result', function() {
      slowDoubleTenTimes(1, spy)
      jasmine.Clock.tick(6000)
      expect(spy).toHaveBeenCalledWith(1024)
    })
  })

})
