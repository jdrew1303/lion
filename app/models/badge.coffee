`import Ember from 'ember'`
`import DS from 'ember-data'`
`import User from './user'`

Badge = User.extend
    trophyCount: DS.attr('number')
    dancerCount: DS.attr('number')
    starCount: DS.attr('number')
    oneHundredCount: DS.attr('number')

`export default Badge`
