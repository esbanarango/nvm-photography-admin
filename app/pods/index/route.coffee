`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

IndexRoute = Ember.Route.extend(AuthenticatedRouteMixin,

	beforeModel: (transition) ->
		loginController = @controllerFor('login')
		session = @get('session')
		unless session.isAuthenticated
			loginController.set 'previousTransition', transition
			@transitionTo 'login'


	model: ->
		@store.find 'photo'


)

`export default IndexRoute`
