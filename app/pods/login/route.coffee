`import Ember from 'ember'`
`import ApplicationRouteMixin from 'simple-auth/mixins/application-route-mixin'`

LoginRoute = Ember.Route.extend(ApplicationRouteMixin,

	cleanForm: ->
		controller = @controllerFor('login')
		controller.set 'loginErrorMessage', null
		controller.set 'identification', ''

	actions:
		sessionAuthenticationFailed: (error) ->
			@controllerFor('login').set 'loginErrorMessage', 'Email or password invalid.'
		sessionAuthenticationSucceeded: ->
			@cleanForm()
			transition = @get 'previousTransition'
			if transition
				transition.retry()
			else
				@transitionTo 'index'
)
`export default LoginRoute`