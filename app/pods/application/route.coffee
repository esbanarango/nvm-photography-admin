`import Ember from 'ember'`
`import ApplicationRouteMixin from 'simple-auth/mixins/application-route-mixin'`

ApplicationRoute = Ember.Route.extend(ApplicationRouteMixin,
	actions:
		sessionInvalidationSucceeded: ->
			console.log 'Loggin out'
			@transitionTo 'login'
)

`export default ApplicationRoute`
