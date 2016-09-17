Pod::Spec.new do |s|
  s.name                = 'QQOpenSDK'
  s.version             = '3.1.0'
  s.summary             = 'Tencent QQ Open SDK 2.9.5 full version'
  s.requires_arc        = true
  s.homepage            = 'http://open.qq.com/'
  s.license             = { :type => 'LGPL', :text => <<-LICENSE
                                                   ® 1998 - 2015 Tencent All Rights Reserved.
                                                   LICENSE
                          }
  s.author              = { 'Tencent' => 'open@qq.com' }
  s.platform            = :ios
  s.source              = { :git => 'https://github.com/smoothdvd/QQOpenSDK.git', :tag => "v#{s.version}" }
  s.frameworks          = 'Security', 'SystemConfiguration', 'CoreGraphics', 'CoreTelephony'
  s.libraries           = 'iconv', 'sqlite3', 'stdc++', 'z'
  s.ios.vendored_frameworks = 'sdk/TencentOpenAPI.framework'
  s.resource = 'sdk/TencentOpenApi_IOS_Bundle.bundle'
end
