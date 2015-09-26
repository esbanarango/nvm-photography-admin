`import Ember from 'ember'`

LoginRoute = Ember.Route.extend(
  renderTemplate: ->
    @render 'login', outlet: 'login'

  actions:

  	sessionAuthenticationFailed: (error) ->
    	console.log error
    	@controllerFor('login').set 'loginErrorMessage', 'Email or password invalid.'
)
`export default LoginRoute`