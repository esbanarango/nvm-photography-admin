`import Ember from 'ember'`

PhotosNewRoute = Ember.Route.extend
	model: ->
		@store.createRecord 'photo'

	actions:
		save: ->
			photo = @get 'currentModel'
			photo.saveWithAttachment().then ((record) =>
				$.iGrowl
					message: 'Photo saved!'
					type: 'success'
					icon: 'feather-circle-check'
				@transitionTo 'index'
			# Error handling
			), (error) ->
				console.log error

`export default PhotosNewRoute`
