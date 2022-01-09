GHC=ghc
BUILD=Build
TESTNAME=ewhaskell-test

.PHONY: all
all: $(BUILD) DataTypes

$(BUILD):
	mkdir $@

DataTypes: Basic/Main.hs
	$(GHC) -o $(BUILD)/$@ $<

.PHONY: test-basicTypes
test-basicTypes:
	cabal run $(TESTNAME) --enable-test -- -m "BasicTypes"

clean:
	cd bin && ./clean.sh