#
# Be sure to run `pod lib lint QLayout.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'QLayout'
  s.version          = '0.2.3'
  s.summary          = 'A Swift Autolayout Utility for iOS'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/josejuanqm/QLayout'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jose.juan.qm@gmail.com' => 'jose.juan.qm@gmail.com' }
  s.source           = { :git => 'https://github.com/josejuanqm/QLayout.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/josejuanqm'

  s.ios.deployment_target = '8.0'
  s.source_files = 'QLayout/Classes/**/*'
  s.module_map = 
end
