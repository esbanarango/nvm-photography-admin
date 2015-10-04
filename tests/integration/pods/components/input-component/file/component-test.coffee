`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'input-component/file', 'Integration | Component | input component/file', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{input-component/file}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#input-component/file}}
      template block text
    {{/input-component/file}}
  """

  assert.equal @$().text().trim(), 'template block text'
