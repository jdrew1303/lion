`import AuthenticatedRoute from './authenticated'`

BadgesRoute = AuthenticatedRoute.extend
  model: ->
    @store.find('badge')

`export default BadgesRoute`
