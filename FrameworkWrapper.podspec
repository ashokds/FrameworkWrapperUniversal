Pod::Spec.new do |s|

	s.name = "FrameworkWrapper"
	s.version = "0.1"
	s.author = { "FrameworkWrapper" => "FrameworkWrapper@dsxtr.com" }
	s.homepage = "https://github.com/ashokds/FrameworkWrapperUniversal"
	s.source =  { :git => "https://github.com/ashokds/FrameworkWrapperUniversal.git", :branch => "master" }
	s.summary =  "iOS Framework Wrapper to integrate with another framework pod"	
	s.swift_version = '5.0'
	s.ios.deployment_target = '13.0'
	s.license = { :type => "MIT", :file => "LICENSE" }
	s.source = { :git => 'https://github.com/ashokds/FrameworkWrapperUniversal.git', :tag => s.version.to_s }
	s.source_files = 'FrameworkWrapper/**/*'
	s.dependency 'DocuSign', '2.5.0'
	s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

	s.test_spec 'FrameworkWrapperTests' do |test_spec|
	    test_spec.source_files = 'FrameworkWrapperTests/Tests/**/*.swift'
		test_spec.resources = 'FrameworkWrapperTests/Resources/**/*.{plist,json,png,bundle}'
		test_spec.test_type = :unit
	end
end
