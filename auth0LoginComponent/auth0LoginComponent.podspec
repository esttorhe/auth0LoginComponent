Pod::Spec.new do |s|
  s.name             = "auth0LoginComponent"
  s.version          = "0.1.0"
  s.summary          = "Small Login Component that interacts with `LinkedIn` and `auth0`."

  s.description      = <<-DESC
`auth0LoginComponent` provides a customizable `UI` login component that integrates with `LinkedIn` `SDK` and with `auth0`.
This component allows easy integration and login capabilities via `auth0`.
                       DESC

  s.homepage         = "https://github.com/esttorhe/auth0LoginComponent"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Esteban Torres" => "me@estebantorr.es" }
  s.source           = { :git => "https://github.com/esttorhe/auth0LoginComponent.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/esttorhe'

  s.ios.deployment_target = '8.0'
  s.vendored_frameworks = 'linkedin-sdk.framework'
  s.preserve_paths = 'linkedin-sdk.framework'

  s.source_files = 'auth0LoginComponent/Classes/**/*'
  s.resource_bundles = {
    'auth0LoginComponent' => ['auth0LoginComponent/Assets/UI/*.xib']
  }

  s.requires_arc = true
  s.private_header_files = 'Pod/Classes/*.h'
  s.frameworks = 'UIKit'
end

# vim: ft=ruby
