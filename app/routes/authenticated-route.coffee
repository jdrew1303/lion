`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

AuthenticatedRoute = Ember.Route.extend(AuthenticatedRouteMixin,
  beforeModel: (transition) ->
    if !@get('session.isAuthenticated')
      transition.abort()
      @set('session.attemptedTransition', transition)
      @transitionTo('login')

  setupController: ->
    @_super.apply(this, arguments)
    @controllerFor('application').connectLayout('application')
)

`export default AuthenticatedRoute`
