`import Ember from 'ember'`

InputComponentFileComponent = Ember.TextField.extend(
	type: 'file'
	file: null

	change: (e) ->
		@set 'file', new Blob([ e.target.files[0] ], type: e.target.files[0].type)

)

`export default InputComponentFileComponent`
