
install:
	(cd generators; go run wikipedia.go > ../lib/wikipedia.go)
	go install .

lint:
	golint *.go
	go vet *.go

test:
	go test ./lib/...
	misspell -dry README.md main.go lib/replace.go

clean:
	rm *~
	go clean ./...