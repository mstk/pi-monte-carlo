HS_SRC=$(wildcard src/*.hs src/*/*.hs)
BIN=dist/build/pimc/pimc

.PHONY: install test

install: $(BIN) 

test: $(BIN)
	$(BIN)

$(BIN): $(HS_SRC) pimc.cabal
	cabal configure
	cabal build

