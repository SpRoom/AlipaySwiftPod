#
# Be sure to run `pod lib lint XQCPaySDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AlipaySwiftPod'
  s.version          = '0.0.33'
  s.summary          = 'alipay pod framework swift support'
  s.swift_version = '4.2'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    alipay support
                       DESC

  s.homepage         = 'https://github.com'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'spec' => 'spectatornan@gmail.com' }
  s.source           = { :git => 'https://github.com/SpectatorNanWithZZC/AlipaySwiftPod.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  #s.ios.deployment_target = '8.0'
  s.platform     = :ios, "9.0"
  s.requires_arc = true

  s.source_files = 'AlipaySwiftPod/**/*'
  
  s.resource = 'AlipaySwiftPod/AlipaySDK.bundle'
  
   # s.resource_bundles = {
   #    'AlipaySwiftPod' => ['AlipaySwiftPod/Assets/*.png']
   # }
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  s.static_framework = true
  s.frameworks   = 'SystemConfiguration', 'CoreTelephony', 'QuartzCore', 'CoreText', 'CoreGraphics', 'UIKit', 'Foundation', 'CFNetwork', 'CoreMotion'
  s.libraries    = 'c++', 'z'
  # s.libraries = 'c++', 'z'
  # s.frameworks = 'SystemConfiguration', 'CoreTelephony', 'QuartzCore', 'CoreText', 'UIKit', 'Foundation', 'CoreMotion', 'CFNetwork', 'CoreGraphics', 'CFNetwork', 'Security'
  # s.vendored_libraries = 'AlipaySwiftPod/libWeChatSDK.a'
  #s.vendored_frameworks = 'XQCPaySDK/Frameworks/YSSDK.framework', 'XQCPaySDK/Frameworks/YSEPaySDK.framework'
  s.vendored_frameworks = 'AlipaySwiftPod/AlipaySDK.framework'
  s.vendored_libraries = 'AlipaySwiftPod/libcrypto.a', 'AlipaySwiftPod/libssl.a'
  #s.public_header_files = 'XQCPaySDK/Frameworks/YSEPaySDK.framework/Headers/YSEPay.h'
  #s.private_header_files = 'XQCPaySDK/Frameworks/YSEPaySDK.framework/Headers/YSEPay.h'
  
  #s.preserve_path = 'XQCPaySDK/Frameworks/*'
  s.source_files  = "AlipaySwiftPod/*.h", "AlipaySwiftPod/*.modulemap"
  s.preserve_path = "AlipaySwiftPod/AlipaySwiftPod.modulemap"
  s.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '$(PODS_ROOT)/AlipaySwiftPod' }
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }


end
