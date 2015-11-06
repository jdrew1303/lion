`import Ember from 'ember'`

Router = Ember.Router.extend
  location: LionENV.locationType

Router.map ->
  @route('login')
  @resource('leaderboard', ->
    @route('all-time')
    @route('weekly')
  )
  @route('hall-of-fame')
  @route('stats')

`export default Router`
