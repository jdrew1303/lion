`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend(
  beforeModel: ->
    @controllerFor('currentUser').sync()
)

`export default ApplicationRoute`
