#
# Be sure to run `pod lib lint Extensions.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'Extensions'
s.version          = '1.3'
s.summary          = 'My personal extension for Swift'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description      = <<-DESC
TODO: Add long description of the pod here.
DESC

s.homepage         = 'https://github.com/Danny182/Extensions'
# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Danny182' => 'danny.zanchi@gmail.com' }
s.source           = { :git => 'https://github.com/Danny182/Extensions.git', :tag => s.version.to_s }
# s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

s.ios.deployment_target = '12.0'

s.source_files = 'Extensions/Classes/**/*'

# s.resource_bundles = {
#   'Extensions' => ['Extensions/Assets/*.png']
# }

# s.public_header_files = 'Pod/Classes/**/*.h'
# s.dependency 'AFNetworking', '~> 2.3'
# s.frameworks = 'UIKit', 'MapKit'
end
