`import Ember from 'ember'`

HallOfFameRoute = Ember.Route.extend
  model: ->
    @store.find('weeklyWinning')

`export default HallOfFameRoute`
