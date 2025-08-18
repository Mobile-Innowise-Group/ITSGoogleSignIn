Pod::Spec.new do |s|
  s.name = 'ITSGoogleSignInSwiftSupport'
  s.version = '0.1.0'
  s.swift_version = '5.0'
  s.summary = 'Adds Swift-focused support for ITSGoogleSignIn (with domain selection fix).'
  s.description = 'Additional Swift support for the ITSGoogleSignIn SDK with domain selection fix.'
  s.homepage = 'https://github.com/Mobile-Innowise-Group/ITSGoogleSignIn'
  s.license = { :type => 'Apache', :file => 'LICENSE' }
  s.authors = 'Google LLC, Innowise Group'
  s.source = {
    :git => 'https://github.com/Mobile-Innowise-Group/ITSGoogleSignIn.git',
    :tag => s.version.to_s
  }
  ios_deployment_target = '13.0'
  macos_deployment_target = '10.15' 
  s.ios.deployment_target = ios_deployment_target
  s.osx.deployment_target = macos_deployment_target
  s.module_name = 'GoogleSignInSwift'
  s.prefix_header_file = false
  s.source_files = [
    'GoogleSignInSwift/Sources/*.swift',
  ]
  s.frameworks = [
    'CoreGraphics',
    'SwiftUI',
  ]
  s.dependency 'ITSGoogleSignIn', '~> 0.1.0'
  s.resource_bundles = {
    'GoogleSignInSwiftSupport_Privacy' => 'GoogleSignInSwift/Sources/Resources/PrivacyInfo.xcprivacy'
  }
  s.test_spec 'unit' do |unit_tests|
    unit_tests.platforms = {
      :ios => ios_deployment_target,
      :osx => macos_deployment_target,
    }
    unit_tests.source_files = [
      'GoogleSignInSwift/Tests/Unit/*.swift',
    ]
    unit_tests.requires_app_host = true
  end
end
