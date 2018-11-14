Pod::Spec.new do |s|
  s.name                = 'QQOpenSDK'
  s.version             = '3.3.3'
  s.summary             = 'Tencent QQ Open SDK 3.3.3 lite version'
  s.requires_arc        = true
  s.homepage            = 'http://open.qq.com/'
  s.license             = { :type => 'LGPL', :text => <<-LICENSE
                                                   ® 1998 - 2018 Tencent All Rights Reserved.
                                                   LICENSE
                          }
  s.author              = { 'Tencent' => 'open@qq.com' }
  s.platform            = :ios
  s.source              = { :git => 'https://github.com/smoothdvd/QQOpenSDK.git', :tag => "v#{s.version}" }
  s.frameworks          = 'SystemConfiguration'
  s.ios.vendored_frameworks = 'sdk/TencentOpenAPI.framework'
end
