#
#  Be sure to run `pod spec lint UGuide.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "UGuide"
  s.version      = "0.0.1"
  s.summary      = "让应用快速具备微信/QQ/微博/支付宝等社交分享能力"

  

  s.homepage     = "https://github.com/51wakeup/UGuide"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "醒来－技术" => "1020166296@qq.com" }
  s.platform     = :ios, "8.0"
  s.swift_version = "4.1"
  s.source       = { :git => "https://github.com/51wakeup/UGuide.git", :tag => "#{s.version}" }

  s.source_files  = "UGuide/Core/*.swift","UGuide/Framework/*.h"#, "UGuide/*.{h}"  
  s.frameworks = "SystemConfiguration", "Security", "CoreTelephony", "CFNetwork", "CoreGraphics", "QuartzCore", "ImageIO", "Security", "CoreText", "Photos"
  s.libraries = "z", "sqlite3.0", "c++", "stdc++", "iconv"

  s.requires_arc = true
  s.vendored_frameworks = 'UGuide/TencentOpenAPI.framework'
  s.vendored_libraries = 'UGuide/Framework/libWeChatSDK.a', 'UGuide/Framework/libWeiboSDK.a'
  s.resources    = ['UGuide/Framework/*.{bundle}']
  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
