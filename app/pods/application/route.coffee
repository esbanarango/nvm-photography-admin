`import Ember from 'ember'`
`import ApplicationRouteMixin from 'simple-auth/mixins/application-route-mixin'`

ApplicationRoute = Ember.Route.extend(ApplicationRouteMixin,
	beforeModel: (transition) ->
		loginController = @controllerFor('login')
		session = @get('session')
		unless session.isAuthenticated
			loginController.set 'previousTransition', transition
			@transitionTo 'login'

	actions:
		sessionInvalidationSucceeded: ->
			console.log 'Loggin out'
			@transitionTo 'login'
)

`export default ApplicationRoute`
