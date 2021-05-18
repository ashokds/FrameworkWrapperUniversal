# To use for local (private repo) integration with DocuSign apps
Pod::Spec.new do |s|

	s.name = "FrameworkWrapperUniversal"
	s.author = { "AM1" => "am1@dsxtr.com" }
	s.homepage = "https://www.docusign.com/developer-center"
	s.source =  { :git => "https://github.com/ashokds/FrameworkWrapperUniversal.git", :branch => "master" }
	s.summary =  "Framework Wrapper to test other embedded framework dependencies"
	s.version = "1"
	s.platform = :ios, '11.0'
	s.license = 'API SDK LICENSE'
	s.requires_arc = true
	s.preserve_paths  = 'FrameworkWrapperUniversal.framework'
	s.public_header_files = 'FrameworkWrapperUniversal.framework/Headers/*.h'
	s.vendored_frameworks  = 'FrameworkWrapperUniversal.framework'
	s.resource   = 'FrameworkWrapperUniversal.framework/DocuSignSDK.bundle'
        s.dependency 'DocuSign', '~> 2.4.1'

        s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
        s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
