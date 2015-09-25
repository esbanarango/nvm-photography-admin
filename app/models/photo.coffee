`import Ember from 'ember'`
`import DS from 'ember-data'`

Photo = DS.Model.extend {
  description: DS.attr 'string'
  tagList: DS.attr 'array'
  tags: Ember.computed.alias 'tagList'
  aperture: DS.attr 'string'
  exposure: DS.attr 'string'
  iso: DS.attr 'number'
  shutterSpeed: DS.attr 'string'
  colorSpace: DS.attr 'string'
  focalLength: DS.attr 'string'
  tookAt: DS.attr 'date'
  settings: DS.attr 'string'
  createdAt: DS.attr 'date'
  updatedAt: DS.attr 'date'
}

`export default Photo`
