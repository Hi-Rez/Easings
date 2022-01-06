Pod::Spec.new do |spec|
  spec.name                   = "Easings"
  spec.version                = "0.0.3"
  spec.summary                = "Easing curves in Swift"
  spec.description            = <<-DESC
  Easing curves in Swift
                   DESC
  spec.homepage               = "https://github.com/Hi-Rez/Easings"
  spec.license                = { :type => "MIT", :file => "LICENSE" }
  spec.author                 = { "Reza Ali" => "reza@hi-rez.io" }
  spec.social_media_url       = "https://twitter.com/rezaali"
  spec.source                 = { :git => "https://github.com/Hi-Rez/Easings.git", :tag => spec.version.to_s }

  spec.osx.deployment_target  = "10.10"
  spec.ios.deployment_target  = "9.0"
  spec.tvos.deployment_target = "9.0"

  spec.source_files           = "Sources/Easings/*.swift"
  spec.module_name            = "Easings"
  spec.swift_version          = "5.1"
end

