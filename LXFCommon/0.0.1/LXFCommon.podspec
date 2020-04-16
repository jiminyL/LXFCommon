#
# Be sure to run `pod lib lint LXFExtension.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LXFCommon'
  s.version          = '0.0.1'
  s.summary          = 'LXFCommon'
  s.description      = <<-DESC
                        LXFCommon 我的通用类
                       DESC

  s.homepage         = 'https://github.com/jiminyL/LXFCommon'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jiminyL' => 'jaewon_89@me.com' }
  s.source           = { :git => 'https://github.com/jiminyL/LXFCommon.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'LXFCommon/*.{h,m}'
  
  # s.resource_bundles = {
  #   'LXFExtension' => ['LXFExtension/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
