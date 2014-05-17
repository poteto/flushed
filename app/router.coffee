Router = Ember.Router.extend()

Router.map ->
  @resource 'toilet', { path: '/toilets' }, ->
    @route 'accessible', { path: '/accessible' }
    @route 'show', { path: ':toilet_id' }
    @route 'new'

`export default Router`
