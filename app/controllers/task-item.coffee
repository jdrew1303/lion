`import Ember from 'ember'`
`import Editable from '../mixins/editable'`

TaskItemController = Ember.ObjectController.extend(Editable,
  editableField: 'title'

  guid: (->
    Ember.guidFor(this)
  ).property()

  assignUserGuid: (->
    "assign_user_#{@get('guid')}"
  ).property('guid')

  removeUserGuid: (->
    "remove_user_#{@get('guid')}"
  ).property('guid')

  remove: ->
    task = @get('model')

    if !task.get('completed')
      return unless confirm('Are you sure?')
      task.deleteRecord()
      task.save()
    else
      task.set('hidden', true)

  actions:
    remove: ->
      @remove()

    toggleCompleted: ->
      task = @get('model')
      task.toggleCompleted(@get('currentUser'))

    assignUser: (user) ->
      task = @get('model')

      if task.get('assignee.id') != user.get('id')
        task.set('assignee', user)
        task.save()

    removeUser: ->
      task = @get('model')
      task.set('assignee', null)
      task.save()
)

`export default TaskItemController`
