# To use for local (private repo) integration with DocuSign apps
Pod::Spec.new do |s|

	s.name = "FrameworkWrapperUniversal"
	s.author = { "DocuSign" => "devcenter@docusign.com" }
	s.homepage = "https://www.docusign.com/developer-center"
	s.source =  { :git => "https://github.docusignhq.com/iOS/DocuSign-IOS-SDK-V2.git", :branch => "master" }
	s.summary =  "DocuSign iOS Framework to sign and send in your iOS apps"
	s.version = "1"
	s.platform = :ios, '11.0'
	s.license = 'DOCUSIGN API SDK LICENSE'
	s.requires_arc = true
	s.preserve_paths  = 'FrameworkWrapperUniversal.framework'
	s.public_header_files = 'FrameworkWrapperUniversal.framework/Headers/*.h'
	s.vendored_frameworks  = 'FrameworkWrapperUniversal.framework'
	s.resource   = 'FrameworkWrapperUniversal.framework/DocuSignSDK.bundle'
end
