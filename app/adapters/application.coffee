`import DS from 'ember-data'`
`import config from './../config/environment'`

ApplicationAdapter =  DS.ActiveModelAdapter.extend(
	namespace: 'api/v1'
	host: config.host
)

`export default ApplicationAdapter`
