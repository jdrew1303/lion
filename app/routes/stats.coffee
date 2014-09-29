`import Ember from 'ember'`

StatsRoute = Ember.Route.extend
  model: ->
    @store.find('stats')

`export default StatsRoute`
