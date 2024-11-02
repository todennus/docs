start:
	go run ./cmd/main.go swagger

docker-build:
	docker build -t todennus/docs -f ./build/package/Dockerfile .

scope-gen:
	go run ./cmd/main.go definition -s ./scopes.md

swag-gen:
	go get -u github.com/todennus/oauth2-service

	go run ./cmd/main.go definition -m ./docs.go

	swag init --parseDependency \
		--dir ./,../oauth2-service/adapter/rest/,../user-service/adapter/rest/,../oauth2-client-service/adapter/rest/,../file-service/adapter/rest/ \
		-g docs.go --output ./swagger
