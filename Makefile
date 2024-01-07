build-agent:
	# clean previous container
	# docker rm -f react-template || true

	# build docker image
	docker build -t react-template .

	# lint the code
	docker run --rm --name='react-template' react-template npm run lint

	# run tests with coverage
	docker run --name='react-template' react-template npm run coverage

	# copy test results
	docker cp react-template:/code/test-results .

	# copy code coverage
	docker cp react-template:/code/coverage .

	# clean up container
	docker rm react-template
