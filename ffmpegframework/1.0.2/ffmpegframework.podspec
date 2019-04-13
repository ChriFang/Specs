Pod::Spec.new do |s|
        s.name                  = "ffmpegframework"
        s.version               = "1.0.2"
        s.summary               = "A iOS perbuilt lib for ffmpeg."
        s.license               = {:type => 'BSD-licensed'}
        s.homepage              = "http://www.sunsetlakesoftware.com"
        s.author                = { "Zhang JunHai" => "zhangjunhai1@yy.com", "Lin SiMing" => "linsiming@yy.com" }
        s.source                = {:http =>"http://repo.yypm.com/dwbuild/mobile/ios/ffmpegframework/FFMPEGFRAMEWORK_1.0.2_REL/20171207-15-r1902477/ffmpegframework.zip"}
        
        s.frameworks            = 'CoreMedia','CoreVideo','Foundation','VideoToolbox'
        
        s.default_subspec = 'ffmpegframework'
        s.subspec 'ffmpegframework' do |ss|
                ss.source_files		= 'include/**/*.h'
                ss.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/ffmpegframework/include','LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
                ss.public_header_files = 'include/libyympeg_x264_version.h'
                ss.preserve_paths       = 'libs/**/*.framework'
                ss.ios.vendored_frameworks = 'libs/*.framework'
        end
end