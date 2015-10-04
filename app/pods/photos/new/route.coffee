`import Ember from 'ember'`

PhotosNewRoute = Ember.Route.extend
	model: ->
	  Ember.RSVP.hash
	    photo: @store.createRecord 'photo'
	    tags: @store.find('tag',
	      sort: 'name'
	      direction: 'asc'
	      per_page: 'all')

	actions:
		save: ->
			photo = @get 'currentModel.photo'
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
