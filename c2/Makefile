EVIH_C2=c2

PL=crystal
CR=shards

BINDIR=bin

shards:
	$(CR) build

fast:
	$(PL) build -s -p src/c2.cr -o bin/c2

release:
	$(PL) build src/c2.cr --release --cross-compile

test:
	$(PL) spec

docs:
	yardoc src/**/*.cr

clean:
	rm -rf bin/*
