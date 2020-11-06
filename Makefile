AWS_PROFILE=chaodev
ENVIRONMENT=dev

deploy:
	sls deploy

package:
	sls package --stage ${ENVIRONMENT} --aws-profile ${AWS_PROFILE}

test:
	serverless invoke local --function dataPipeline --stage ${ENVIRONMENT} --path event/data_pipeline.json

remove:
	sls remove