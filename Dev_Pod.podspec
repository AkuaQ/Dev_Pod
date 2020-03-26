#
# Be sure to run `pod lib lint Dev_Pod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Dev_Pod'
  s.version          = '0.1.0'
  s.summary          = 'Dev_Pod holds the logic of firstApp'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This app searches through a collection of recipes of food inside of your kitchen to create recipes from.
                       DESC

  s.homepage         = 'https://github.com/AkuaQ/Dev_Pod'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'AkuaQ' => 'AAfraneOkese@jhb.dvt.co.za' }
  s.source           = { :git => 'https://github.com/AkuaQ/Dev_Pod.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Dev_Pod/Classes/**/*'
  
  # s.resource_bundles = {
  #   'Dev_Pod' => ['Dev_Pod/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.static_framework = true
  s.dependency 'Firebase'
  s.dependency 'SwiftLint'
  s.dependency 'Firebase/Analytics'
  s.dependency 'Firebase/Auth'
  s.dependency 'Firebase/Database'
