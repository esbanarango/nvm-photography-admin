`import Ember from 'ember'`

Select2TaggableComponent = Ember.TextField.extend(
  becomeTaggable: (->
    list = []
    @get('content').forEach (tag) ->
      list.push tag.get('name')
    @$().select2
      tags: list
      tokenSeparators: [ ',' ]
  ).on('didInsertElement')
)

`export default Select2TaggableComponent`
