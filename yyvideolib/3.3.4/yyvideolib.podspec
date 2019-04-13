Pod::Spec.new do |s|
	s.name         = 'yyvideolib'
	s.version      = '3.3.4'
	s.summary      = 'yyvideolib'
	s.homepage     = 'http://www.yy.com/'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2013 YY Inc., All rights reserved.
      LICENSE
    }
	s.author       = { 'yy' => 'yypm@yy.com' }
	s.source       = { :http => "http://repo.yypm.com/dwbuild/mobile/ios/yyvideolib/YYVIDEOLIB_3.3.4_REL/20180904-1194-r2227350//yyvideolib.zip" }
	s.platform     = :ios, '4.3'
    s.ios.deployment_target = '4.3'
    s.requires_arc = true

    s.default_subspec = 'yyvideolib'
	s.subspec 'yyvideolib' do |ss|
		ss.preserve_paths  = 'libs/**/*.framework'
		ss.ios.vendored_frameworks = 'libs/*.framework'
		ss.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
	end

	s.subspec 'yyvideolibstatic' do |sz|
		sz.source_files = 'include/yyvideolibstatic/*.h'
    	sz.resource = 'resource/yyvideolibstatic/yyvideolib.bundle'
		sz.vendored_library = 'libs/libyyvideolibstatic.a'
		sz.library = 'yyvideolibstatic'
		sz.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yyvideolib/libs"' }
	end

	s.subspec 'yyvideolibplayer' do |sy|
		sy.source_files = 'include/yyvideolibplayer/*.h'
    	sy.resource = 'resource/yyvideolibplayer/yyvideolib.bundle'
		sy.vendored_library = 'libs/libyyvideolibplayer.a'
		sy.library = 'yyvideolibplayer'
		sy.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yyvideolib/libs"' }
	end

	s.subspec 'yyvideolibshower' do |sx|
		sx.source_files = 'include/yyvideolibshower/*.h'
    	sx.resource = 'resource/yyvideolibshower/yyvideolib.bundle'
		sx.vendored_library = 'libs/libyyvideolibshower.a'
		sx.library = 'yyvideolibshower'
		sx.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yyvideolib/libs"' }
	end

end