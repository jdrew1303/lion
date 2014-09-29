`import Ember from 'ember'`

TasksRoute = Ember.Route.extend
  beforeModel: (transition) ->
    Notify.requestPermission() if Notify.isSupported && Notify.needsPermission

    @store.find('user').then((users) =>
      @controllerFor('tasks').set('users', users)
    )

    @_super(transition)

  model: ->
    @store.find('task')

`export default TasksRoute`
