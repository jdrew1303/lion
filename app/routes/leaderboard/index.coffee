`import Ember from 'ember'`

LeaderboardIndexRoute = Ember.Route.extend
  beforeModel: (transition) ->
    @transitionTo('leaderboard.weekly')
    @_super(transition)

`export default LeaderboardIndexRoute`
