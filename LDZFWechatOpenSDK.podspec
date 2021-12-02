#
# Be sure to run `pod lib lint LDZFWechatOpenSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LDZFWechatOpenSDK'
  s.version          = '0.1.0'
  s.summary          = 'A short description of LDZFWechatOpenSDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/ZiOS-Repo/LDZFWechatOpenSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhuyuhui434@gmail.com' => 'zhuyuhui434@gmail.com' }
  s.source           = { :git => 'https://github.com/ZiOS-Repo/LDZFWechatOpenSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'LDZFWechatOpenSDK/Classes/**/*'
  
  #如果在制作pod时导入了.a文件，如下
  s.vendored_libraries = 'LDZFWechatOpenSDK/Classes/OpenSDK1.8.7.1/*.a'
  
  #如果加入了framework文件，就在podspec里写上下面这句话
  #s.vendored_frameworks = 'LDZFWechatOpenSDK/Classes/*.framework'
  
  # s.resource_bundles = {
  #   'LDZFWechatOpenSDK' => ['LDZFWechatOpenSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
# pod trunk push LDZFWechatOpenSDK.podspec --allow-warnings
