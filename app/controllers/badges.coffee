`import Ember from 'ember'`

BadgesController = Ember.ArrayController.extend
  trophySorting: ['trophyCount:desc']
  dancerSorting: ['dancerCount:desc']
  starSorting: ['starCount:desc']
  oneHundredSorting: ['oneHundredCount:desc']
  trophyFilter: []
  trophyBadges: Ember.computed.sort('content', 'trophySorting')
  dancerBadges: Ember.computed.sort('content', 'dancerSorting')
  starBadges: Ember.computed.sort('content', 'starSorting')
  oneHundredBadges: Ember.computed.sort('content', 'oneHundredSorting')
`export default BadgesController`
