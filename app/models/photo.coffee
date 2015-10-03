`import Ember from 'ember'`
`import DS from 'ember-data'`
`import Attachable from '../mixins/attachable'`

`const { attr } = DS`

Photo = DS.Model.extend {
  # Image
  imageUrl: attr('string'),
  attachmentAs: 'image',

  description: attr 'string'
  tagList: attr 'array'
  tags: Ember.computed.alias 'tagList'
  aperture: attr 'string'
  exposure: attr 'string'
  iso: attr 'number'
  shutterSpeed: attr 'string'
  colorSpace: attr 'string'
  focalLength: attr 'string'
  tookAt: attr 'date'
  settings: attr 'string'
  createdAt: attr 'date'
  updatedAt: attr 'date'
}

`export default Photo`
