Pod::Spec.new do |s|
	s.name         = "audioenginesdk"
	s.version      = "10.1.24"
	s.summary      = "Audio processing methods for yysdk."
	s.license      = {:type => 'LGPL v2.1+'}
	s.homepage     = "http://www.yy.com/"

	s.author       = { "huyifeng" => "huyifeng@yy.com" }

	s.source       = {:http => "http://repo.yypm.com/dwbuild/mobile/ios/audioenginesdk/AUDIOENGINESDK_10.1.24_REL/20190304-88-r2389227//audioenginesdk.zip"}
	
	s.default_subspec = 'audioenginesdk'
	s.subspec 'audioenginesdk' do |ss|
		ss.dependency 'audiocodec', '10.1.9-dev'
ss.dependency 'audiodsp', '1.2.4-dev'
	    ss.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/audioenginesdk/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/audioenginesdk/libs" }
	    ss.source_files		= 'include/**/*.h','include/*.h'
	    ss.header_mappings_dir = 'include'
	    ss.vendored_library = 'libs/libaudio_static.a'
	    ss.library = 'audio_static'
    end
    
    s.subspec 'yyaudiodynamicsdk' do |sy|
    	sy.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/audioenginesdk/include', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
    	sy.source_files		= 'include/**/*.h','include/*.h'
    	sy.header_mappings_dir = 'include'
    	sy.ios.vendored_frameworks = 'libs/*.framework'
    end
end