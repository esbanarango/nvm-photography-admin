`import Ember from 'ember'`

photoUrlSize = (params) ->
  originalUrl = params[0]
  size = params[1]
  originalUrl.replace(/([^\/]+)(?=\/[^\/]+\/?$)/, size)

PhotoUrlSizeHelper = Ember.Helper.helper photoUrlSize

`export { photoUrlSize }`

`export default PhotoUrlSizeHelper`
