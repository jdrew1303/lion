`import AuthenticatedRoute from './authenticated'`

IndexRoute = AuthenticatedRoute.extend
  beforeModel: (transition) ->
    @transitionTo('leaderboard')
    @_super(transition)

`export default IndexRoute`
