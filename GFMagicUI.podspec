#
# Be sure to run `pod lib lint GFMagicUI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GFMagicUI'
  s.version          = '0.1.2'
  s.summary          = 'A quickly tool to locate and customize your storyboard.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A quicklytool to locate and customize your storyboard.
You can quickly locate your storyboard. You can customize your Font name, size and color.
                       DESC

  s.homepage         = 'https://github.com/guidosette/GFMagicUI'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'guidosette' => 'guido.fanfani7@gmail.com' }
  s.source           = { :git => 'https://github.com/guidosette/GFMagicUI.git', :tag => s.version.to_s }
   s.social_media_url = 'https://twitter.com/Guidosette'

  s.ios.deployment_target = '8.0'

  s.source_files = 'GFMagicUI/Classes/**/*'
  
  # s.resource_bundles = {
  #   'GFMagicUI' => ['GFMagicUI/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
