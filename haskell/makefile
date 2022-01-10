GHC=ghc
CABAL=cabal
CD=cd

BUILD=build
BASIC=basic

TESTNAME=ewhaskell-test

EXEC=DataTypes

SUBTESTS=BasicTypesNormal ObjectTypesNormal ObjectTypesAdvance ObjectTypesAdvanceTwo
TESTS=BasicTypes ObjectTypes $(SUBTESTS)

.PHONY: all
all: $(BUILD) $(EXEC)

$(BUILD):
	mkdir $@

$(EXEC): 
	$(CABAL) v2-build
	find . -type f -name "$@" | xargs -I {} mv {} ./build/$@
	make clean
	clear

.PHONY: test
test: test-$(TESTS)
	$(CABAL) run $(TESTNAME) --enable-test

.PHONY: test-$(TESTS)
test-$(TESTS):
	$(CABAL) run $(TESTNAME) --enable-test -- -m "$@"

clean:
	$(CD) bin && ./$@.sh
	$(CABAL) $@