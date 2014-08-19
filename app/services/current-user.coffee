`import Ember from 'ember'`
`import LocalStorage from '../local-storage'`

CurrentUserService = Ember.ObjectProxy.extend
  sync: ->
    currentUser = LocalStorage.getItem('currentUser')

    if !Ember.isEmpty(currentUser)
      @store.push('user', currentUser)
      @set('content', @store.getById('user', currentUser.id))
    else
      Ember.$.getJSON("#{window.ENV.API_URL}/api/users/me").then((data) =>
        @store.pushPayload(data)
        @set('content', @store.getById('user', data.user.id))
      )

  logout: ->
    debugger
    @set('content', null)

  contentDidChange: (->
    LocalStorage.setItem('currentUser', @get('content')?.toJSON({ includeId: true }))
  ).observes('content')

`export default CurrentUserService`
