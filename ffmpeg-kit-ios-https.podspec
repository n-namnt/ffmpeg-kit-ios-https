Pod::Spec.new do |s|
    s.name             = 'ffmpeg-kit-ios-https'
    s.version          = '6.0.0'
    s.summary          = 'Static build of ffmpeg-kit for iOS with HTTPS support'
    s.homepage         = 'https://github.com/n-namnt/ffmpeg-kit-ios-https'
    s.license          = { :type => 'Apache 2.0' }
    s.author           = { 'unisoftvn' => 'email@example.com' }
    s.platform         = :ios, '12.1'
    s.source           = { :git => 'https://github.com/n-namnt/ffmpeg-kit-ios-https.git', :tag => '6.0.0' }
    s.vendored_frameworks = [
      'ffmpegkit.xcframework',
      'libavcodec.xcframework',
      'libavdevice.xcframework',
      'libavfilter.xcframework',
      'libavformat.xcframework',
      'libavutil.xcframework',
      'libswresample.xcframework',
      'libswscale.xcframework'
    ]
    s.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
end
  