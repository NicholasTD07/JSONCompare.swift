SCHEME=JSONCompare
TARGET=JSONCompare

default: test

test:
	swift test

build-for-coverage:
	swift package generate-xcodeproj
	xcodebuild -scheme $(SCHEME) -enableCodeCoverage YES test &>/dev/null

clean:
	swift build --clean

clean-for-coverage:
	xcodebuild -scheme $(SCHEME) clean &>/dev/null
