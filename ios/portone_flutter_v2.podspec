#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint portone_flutter_v2.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'portone_flutter_v2'
  s.version          = '0.0.1'
  s.summary          = 'A module for integrating PortOne V2 payment service in Flutter App.'
  s.description      = <<-DESC
A module for integrating PortOne V2 payment service in Flutter App.
                       DESC
  s.homepage         = 'http://cami.kr'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Dongmin Yu' => 'ydm2790@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  # If your plugin requires a privacy manifest, for example if it uses any
  # required reason APIs, update the PrivacyInfo.xcprivacy file to describe your
  # plugin's privacy impact, and then uncomment this line. For more information,
  # see https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
  # s.resource_bundles = {'portone_flutter_v2_privacy' => ['Resources/PrivacyInfo.xcprivacy']}
end
