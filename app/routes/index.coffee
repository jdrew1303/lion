`import Ember from 'ember'`

IndexRoute = Ember.Route.extend
  beforeModel: (transition) ->
    @transitionTo('tasks')
    @_super(transition)

`export default IndexRoute`
