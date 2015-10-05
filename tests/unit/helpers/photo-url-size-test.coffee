`import { photoUrlSize } from '../../../helpers/photo-url-size'`
`import { module, test } from 'qunit'`

module 'Unit | Helper | photo url size'

# Replace this with your real tests.
test 'it works', (assert) ->
	result = photoUrlSize(['http://s3.amazonaws.com/nvm-photography-development/photos/images/000/000/004/original/1443986307.blob', 'small'])
	assert.equal(result, 'http://s3.amazonaws.com/nvm-photography-development/photos/images/000/000/004/small/1443986307.blob')
