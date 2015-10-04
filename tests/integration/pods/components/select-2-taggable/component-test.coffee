`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'select-2-taggable', 'Integration | Component | select 2 taggable', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{select-2-taggable}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#select-2-taggable}}
      template block text
    {{/select-2-taggable}}
  """

  assert.equal @$().text().trim(), 'template block text'
