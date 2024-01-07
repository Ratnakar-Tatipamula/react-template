build-agent:
	# clean previous container
	docker rm -f react-template || true

	# build docker image
	docker build -t react-template

	# lint the code
	docker run react-template npm run lint

	# run tests with coverage
	docker run react-template npm run coverage

	# copy test results
	docker cp react-template:/path/to/test-results ./test-results

	# copy code coverage
	docker cp react-template:/path/to/code-coverage ./code-coverage

# build-agent:
# 	docker build -t react-template .
# 	docker run -p 8080:80 react-template