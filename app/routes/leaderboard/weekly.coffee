`import Ember from 'ember'`

LeaderboardWeeklyRoute = Ember.Route.extend
  setupController: ->
    @_super.apply(this, arguments)

    @store.find('score', { time_span: 'weekly' }).then((scores) =>
      @controllerFor('leaderboard').set('content', scores)
    )

`export default LeaderboardWeeklyRoute`
