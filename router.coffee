Router.map ->
  @route 'about',
    path: '/about'
    action: ->
      console.log 'this is a test of iron-router'

Router.map ->
  @route 'something',
    path: '/something'
    where: 'server'
    before: ->
      console.log @
    action: ->
      @response.writeHead 200, {'Content-Type': 'text/html'}
      @response.end 'hello from server!'
