`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'photos-grid', 'Integration | Component | photos grid', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{photos-grid}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#photos-grid}}
      template block text
    {{/photos-grid}}
  """

  assert.equal @$().text().trim(), 'template block text'
