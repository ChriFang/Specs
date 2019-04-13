Pod::Spec.new do |s|
	s.name         = 'stmobile'
	s.version      = '1.4.1'
	s.summary      = 'stmobile'
	s.homepage     = 'http://www.yy.com/'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2013 YY Inc., All rights reserved.
      LICENSE
    }
	s.author       = { 'yy' => 'yypm@yy.com' }
	s.source       = { :http => "http://repo.yypm.com/dwbuild/mobile/ios/stmobile/STMOBILE_1.4.1_REL/20180727-92-r2159958//stmobile.zip" }
	s.platform     = :ios, '4.3'
    s.ios.deployment_target = '4.3'
    s.requires_arc = true
    s.preserve_paths  = 'libs/**/*.framework'
    s.ios.vendored_frameworks = 'libs/*.framework'
	s.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
end
