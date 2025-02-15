lint:
    docker run --rm -itv $(CURDIR):/app -w /app golangci/golangci-lint golangci-lint run controllers/ database/ models/ routes/
test:
    docker compose exec app go test main_teste.go
start:
	docker compose up
ci: start lint test