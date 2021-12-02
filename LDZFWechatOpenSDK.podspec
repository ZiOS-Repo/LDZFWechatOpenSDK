#
# Be sure to run `pod lib lint LDZFWechatOpenSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LDZFWechatOpenSDK'
  s.version          = '0.1.2'
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

#  s.source_files = 'LDZFWechatOpenSDK/Classes/**/*'
  s.public_header_files = "LDZFWechatOpenSDK/Classes/OpenSDK/*.h"
  #备注：一定要加上具体的后缀 如：*.{h,m,mm}   不要只写：*  否则会编译失败
  s.source_files = "LDZFWechatOpenSDK/Classes/OpenSDK/*.{h,m,mm}"
  
  #如果在制作pod时导入了.a文件，如下
  s.vendored_libraries = 'LDZFWechatOpenSDK/Classes/OpenSDK/*.a'
  s.frameworks = "CFNetwork", "Security", "CoreTelephony", "SystemConfiguration", "UIKit", "CoreGraphics", "Foundation", "WebKit"
  s.libraries = "z", "sqlite3.0", "c++"
  
#  s.pod_target_xcconfig = { "OTHER_LDFLAGS" => "-lObjC" }
  # 不知道为什么加上i386就无法通过 pod lib lint???
  s.pod_target_xcconfig = { "VALID_ARCHS" => "x86_64 armv7 arm64" }
  
  
  #如果加入了framework文件，就在podspec里写上下面这句话
  #s.vendored_frameworks = 'LDZFWechatOpenSDK/Classes/*.framework'
  
  # s.resource_bundles = {
  #   'LDZFWechatOpenSDK' => ['LDZFWechatOpenSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
# pod lib lint --use-libraries
# pod lib lint --verbose --use-libraries
# pod trunk push LDZFWechatOpenSDK.podspec --allow-warnings



#（1）调用pod spec lint 时报了如下错误：
#
#- ERROR | [iOS] unknown: Encountered an unknown error (The 'Pods-App' target has transitive dependencies that include statically linked binaries:
#
#解决方案：
#
#这个错误是因为依赖库（s.dependency）包含了.a静态库造成的。虽然这并不影响Pod的使用，但是验证是无法通过的。可以通过 --use-libraries 来让验证通过。
#
#这种情况下使用 --use-libraries 虽然不会出现错误，但是有时候会带来一些警告，警告同样是无法通过验证的。这时可以用 --allow-warnings 来允许警告。
#
#（2）调用pod lib lint --verbose --use-libraries时报了如下错误：
#
#Ld .../Build/Intermediates.noindex/App.build/Release-iphonesimulator/App.build/Objects-normal/arm64/Binary/App normal arm64
#
#解决方案：
#
#在 podspec 文件中添加 s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }，如果项目已经设置 pod_target_xcconfig，添加到已有值的后面。
#
#
#————————————————
#版权声明：本文为CSDN博主「培根芝士」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。
#原文链接：https://blog.csdn.net/watson2017/article/details/109114524
