Pod::Spec.new do |s|
	s.name         = "audiocodec"
	s.version      = "10.1.6-dev"
	s.summary      = "Audio Codec for Audioengine"
	s.license      = {:type => 'LGPL v2.1+'}
	s.homepage     = "http://www.yy.com/"

	s.author       = { "zhangjingzhou" => "zhangjingzhou@yy.com" }

	s.source       = {:http => "http://repo.yypm.com/dwbuild/mobile/ios/audiocodec/audiocodec_dependentsdk_maint/20190109-174-r2362059//audiocodec.zip"}

	s.default_subspec = 'audiocodec'
	s.subspec 'audiocodec' do |ss|
	    ss.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/audiocodec/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/audiocodec/libs" }
	    ss.source_files		= 'include/**/*.h','include/*.h'
	    ss.header_mappings_dir = 'include'
	    ss.vendored_library = 'libs/libaudiocodec_static.a'
	    ss.library = 'audiocodec_static'
    end

    s.subspec 'audiocodecframework' do |sy|
    	sy.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/audiocodec/include', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
    	sy.source_files		= 'include/**/*.h','include/*.h'
    	sy.header_mappings_dir = 'include'
    	sy.ios.vendored_frameworks = 'libs/*.framework'
    end
end
