# load .env vars into makefile context
ifneq (,$(wildcard .env))
    include .env
    export
endif

# verify env var values
.PHONY: env
env:
	@echo "twilio environment variables:\n"
	@env | grep -i twilio
	@env | grep -i personal

.PHONY: test
test:
	go test ./...

.PHONY: run
vendor:
	go run main.go

.PHONY: vendor
vendor:
	go mod tidy
	go mod vendor
