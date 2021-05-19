#/usr/bin/xcrun simctl list -j
date
time
xcodebuild -version
echo "start pod lib lint"
pod lib lint --allow-warnings --verbose
echo "end pod lib lint"
date
time
