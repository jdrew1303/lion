`import DS from 'ember-data'`

Badge = DS.Model.extend
  body: DS.attr('body')
  reciver: DS.attr('receiver')
  # user: DS.belongsTo('user')

`export default Badge`
