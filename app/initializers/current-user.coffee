CurrentUserInitializer =
  name: 'current-user'

  initialize: (container, app) ->
    app.inject('service:currentUser', 'store', 'store:main')
    app.inject('route', 'currentUser', 'service:currentUser')
    app.inject('model', 'currentUser', 'service:currentUser')
    app.inject('controller', 'currentUser', 'service:currentUser')

`export default CurrentUserInitializer`
