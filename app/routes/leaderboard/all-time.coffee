`import Ember from 'ember'`

LeaderboardAllTimeRoute = Ember.Route.extend
  setupController: ->
    @_super.apply(this, arguments)

    @store.find('score', { time_span: 'all_time' }).then((scores) =>
      @controllerFor('leaderboard').set('content', scores)
    )

`export default LeaderboardAllTimeRoute`
