all: build check test

build: seccomp.go seccomp_internal.go
	go build .

check: seccomp.go seccomp_internal.go seccomp_test.go
	gofmt -s -d .
	go vet .
	golint .

test: seccomp.go seccomp_internal.go seccomp_test.go
	go test .
