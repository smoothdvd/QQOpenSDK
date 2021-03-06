Pod::Spec.new do |s|
  s.name                = 'QQOpenSDK'
  s.version             = '3.5.1'
  s.summary             = 'Tencent QQ Open SDK 3.5.1 lite version'
  s.requires_arc        = true
  s.homepage            = 'http://open.qq.com/'
  s.license             = { :type => 'LGPL', :text => <<-LICENSE
                                                   ® 1998 - 2020 Tencent All Rights Reserved.
                                                   LICENSE
                          }
  s.author              = { 'Tencent' => 'open@qq.com' }
  s.platform            = :ios, '7.0'
  s.source              = { :git => 'https://github.com/smoothdvd/QQOpenSDK.git', :tag => "v#{s.version}" }
  s.frameworks          = 'SystemConfiguration', 'Security', 'CoreGraphics', 'CoreTelephony'
  s.weak_framework      = 'WebKit'
  s.libraries           = 'iconv', 'sqlite3', 'stdc++', 'z'
  s.ios.vendored_frameworks = 'sdk/TencentOpenAPI.framework'
  s.ios.resource        = 'sdk/TencentOpenApi_IOS_Bundle.bundle'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
