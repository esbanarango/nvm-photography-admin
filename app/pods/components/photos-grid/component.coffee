`import Ember from 'ember'`

PhotosGridComponent = Ember.Component.extend(
	classNames: ['grid', 'photos-grid']

	_init: Ember.on('didInsertElement', ->
	  Ember.run.scheduleOnce 'afterRender', this, ->
			console.log('oooe')
			$('.photos-grid').isotope
				itemSelector: '.grid-item'
				masonry:
					columnWidth: 30
	)


)

`export default PhotosGridComponent`
