`import Ember from 'ember'`
`import ApplicationRouteMixin from 'simple-auth/mixins/application-route-mixin'`

LoginRoute = Ember.Route.extend(ApplicationRouteMixin,

  actions:
  	sessionAuthenticationFailed: (error) ->
    	@controllerFor('login').set 'loginErrorMessage', 'Email or password invalid.'
    sessionAuthenticationSucceeded: ->
    	transition = @get 'previousTransition'
    	if transition
    		transition.retry()
    	else
    		@transitionTo 'index'
)
`export default LoginRoute`