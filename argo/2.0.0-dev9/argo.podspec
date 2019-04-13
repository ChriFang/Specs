Pod::Spec.new do |s|
	s.name         = 'argo'
	s.version      = '2.0.0-dev9'
	s.author        = { 'yy' => 'liyuhua@yy.com' }
	s.license      = {
      		:type => 'Copyright',
      		:text => <<-LICENSE
      		Copyright 2005-2016 YY Inc., All rights reserved.
      		LICENSE
    	}
	s.homepage   		= 'http://www.yy.com/'
	s.source          	= { :http => "http://repo.yypm.com/dwbuild/mobile/ios/argo/2.0_maint/20190218-72-r42ee3000d38dcba5d7b7623046f6b7d58e6b8b6b//argo.zip" }
	s.summary      		= 'argo sdk.'
	s.platform        	= :ios, '8.0'
	s.source_files 		= 'include/**/*'
	s.vendored_libraries 	= 'libs/libargo.a'
	s.xcconfig       	= { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/argo/libs"' }
    	s.header_mappings_dir 	= 'include'
	
end
