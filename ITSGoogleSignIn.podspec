Pod::Spec.new do |s|
  s.name             = 'ITSGoogleSignIn'
  s.version          = '0.0.6'
  s.summary          = 'Enables iOS apps to sign in with Google.'
  s.description      = <<-DESC
                       It is cloned GoogleSighIn with some changes.
                       The Google Sign-In SDK allows users to sign in with their Google account from third-party apps.
                       DESC
  s.homepage         = 'https://github.com/Mobile-Innowise-Group'
  s.license          = { :type => 'Apache', :file => 'LICENSE' }
  s.authors          = 'Google, Innowise Group'
  s.source           = {
    :git => 'https://github.com/Mobile-Innowise-Group/ITSGoogleSignIn.git',
    :tag => '0.0.6'
  }
  ios_deployment_target = '9.0'
  osx_deployment_target = '10.15'
  s.ios.deployment_target = ios_deployment_target
  s.osx.deployment_target = osx_deployment_target
  s.prefix_header_file = false
  s.source_files = [
    'GoogleSignIn/Sources/**/*.[mh]',
  ]
  s.public_header_files = [
    'GoogleSignIn/Sources/Public/GoogleSignIn/*.h',
  ]
  s.frameworks = [
    'CoreGraphics',
    'CoreText',
    'Foundation',
    'LocalAuthentication',
    'Security'
  ]
  s.ios.framework = 'UIKit'
  s.osx.framework = 'AppKit'
  s.dependency 'AppAuth', '~> 1.5'
  s.dependency 'GTMAppAuth', '~> 1.0.0'
  s.dependency 'GTMSessionFetcher/Core', '~> 1.1'
  s.resource_bundle = {
    'GoogleSignIn' => ['GoogleSignIn/Sources/{Resources,Strings}/*']
  }
  s.pod_target_xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => 'GID_SDK_VERSION=' + s.version.to_s,
    'HEADER_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}"',
    'DEFINES_MODULE' => 'YES'
  }
end
