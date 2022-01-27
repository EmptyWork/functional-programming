GHC=ghc
CABAL=cabal
CD=cd

BUILD=build
BASIC=basic

TESTNAME=ewhaskell-test

EXEC=datatypes solvemefirst

SUBTESTS=BasicTypesNormal ObjectTypesNormal ObjectTypesAdvance ObjectTypesAdvanceTwo EightKyuDividedBy EightKyuRealFloor EightKyuReversedString EightKyuShortLongShort
TESTS=BasicTypes ObjectTypes CodeWars ChallegesW3Resource $(SUBTESTS)

.PHONY: all
all: $(BUILD) $(EXEC)

$(BUILD):
	mkdir $@

$(EXEC): 
	$(CABAL) v2-build $@
	$(CD) dist-newstyle/ && ../bin/search.sh -n $@

.PHONY: test
test: $(TESTS)
	$(CABAL) run $(TESTNAME) --enable-test

.PHONY: $(TESTS)
$(TESTS):
	$(CABAL) run $(TESTNAME) --enable-test -- -m "$@"

clean:
	./bin/$@.sh
	$(CABAL) $@