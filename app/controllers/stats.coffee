`import Ember from 'ember'`

StatsController = Ember.ArrayController.extend
  pullRequestsSorting: ['pullRequestsCount:desc']
  additionsSorting: ['numberOfAdditions:desc']
  deletionsSorting: ['numberOfDeletions:desc']
  reviewsSorting: ['pullRequestReviewsCount:desc']
  badgesSorting: ['badgesCount:desc']
  pullRequestStats: Ember.computed.sort('content', 'pullRequestsSorting')
  additionStats: Ember.computed.sort('content', 'additionsSorting')
  deletionStats: Ember.computed.sort('content', 'deletionsSorting')
  reviewStats: Ember.computed.sort('content', 'reviewsSorting')
  badgeStats: Ember.computed.sort('content', 'badgesSorting')

`export default StatsController`
