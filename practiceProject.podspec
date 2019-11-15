#
#  Be sure to run `pod spec lint practiceProject.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|


  spec.name         = "practiceProject"
  spec.version      = "0.0.3"
  spec.summary      = "练习pod库"

  spec.description  = <<-DESC
      “这是描述部分”
                   DESC

  spec.homepage     = "git@github.com:LJJHD/practiceProject.git"

#spec.license      = {:type => 'MIT', :file => 'READE.md'}
   spec.license      = { :type => "MIT", :file => "LICENSE" }


  spec.author             = { "malagu" => "liujiajun888666@icloud.com" }

   spec.platform     = :ios, "8.0"

   spec.ios.deployment_target = "8.0"

  spec.source       = { :git => "https://github.com/LJJHD/practiceProject.git", :tag => "#{spec.version}" }

  spec.source_files  = "Classes/NSString/**/*"
  spec.exclude_files = "Classes/Exclude"

  spec.requires_arc = true

  # spec.public_header_files = "Classes/**/*.h"

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end
