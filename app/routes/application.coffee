`import Ember from 'ember'`
`import ApplicationRouteMixin from 'simple-auth/mixins/application-route-mixin'`

ApplicationRoute = Ember.Route.extend(ApplicationRouteMixin,
  beforeModel: ->
    @get('currentUser').sync()

  actions:
    authenticateSession: ->
      @get('session').authenticate('authenticator:omniauth')

    sessionAuthenticationSucceeded: ->
      @_super.apply(this, arguments)
      @get('currentUser').sync()

    sessionInvalidationSucceeded: ->
      @get('currentUser').logout()
      @_super.apply(this, arguments)
)

`export default ApplicationRoute`
