`import Ember from 'ember'`

LoginRoute = Ember.Route.extend
  beforeModel: ->
    @transitionTo('leaderboard') if @get('session.isAuthenticated')

  setupController: ->
    @controllerFor('application').connectLayout('simple')

`export default LoginRoute`
