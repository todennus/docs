start:
	go run ./cmd/main.go

docker-build:
	docker build -t todennus/docs -f ./build/package/Dockerfile .

gen:
	swag init --parseDependency \
		--dir ../oauth2-service/adapter/rest/,../user-service/adapter/rest/ \
		-g app.go --output ./swagger
