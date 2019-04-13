Pod::Spec.new do |s|
	s.name         = 'transsdk'
	s.version      = '1.6.42'
	s.summary      = 'transsdk for yyprotosdk'
	s.homepage     = 'http://www.yy.com/'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2013 YY Inc., All rights reserved.
      LICENSE
    }
	s.author       = { 'yy' => 'yypm@yy.com' }
	s.source       = { :http => "http://repo.yypm.com/dwbuild/mobile/ios/transsdk/TRANSSDK_1.6.42_REL/20190225-314-r2385698//transsdk.zip" }
	s.platform     = :ios, '4.3'
    s.ios.deployment_target = '4.3'
    s.requires_arc = true
    s.source_files = 'include/**/*.h'
	s.vendored_library = 'libs/libtranssdk.a'
	s.library = 'transsdk'
	s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/transsdk/libs"' }
end