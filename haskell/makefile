GHC=ghc
BUILD=build
BASIC=basic
CABAL=cabal
CD=cd
SRCS=DataTypes
TESTNAME=ewhaskell-test

.PHONY: all
all: $(BUILD) $(SRCS)

$(BUILD):
	mkdir $@

DataTypes: $(BASIC)/Main.hs
	$(CD) $(BASIC) && $(GHC) -o ../$(BUILD)/$@ ../$<
	make clean
	clear

.PHONY: test-basicTypes
test-basicTypes:
	$(CABAL) run $(TESTNAME) --enable-test -- -m "BasicTypes"

clean:
	$(CD) bin && ./$@.sh
	$(CABAL) $@