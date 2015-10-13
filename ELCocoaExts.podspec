
Pod::Spec.new do |s|

  s.name         = "ELCocoaExts"
  s.version      = "0.0.3"
  s.summary      = "Cocoa Category Extensions"

  s.description  = <<-DESC
                   A longer description of ELCocoaExts in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "https://github.com/EvanLee/ELCocoaExts"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author       = { "EvanLee" => "haoer715@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/EvanLee/ELCocoaExts.git", :tag => s.version, :submodules => true }

 
  s.source_files  = "ELCocoaExts/ELCocoaExts.h"
  s.public_header_files = "ELCocoaExts/ELCocoaExts.h"

  s.requires_arc = true

  s.subspec 'ViewExts' do |ss|
    ss.source_files = 'ELCocoaExts/ELViewExts/**/*.{h,m}'
    ss.public_header_files = 'ELCocoaExts/ELViewExts/ELViewExts.h', 'ELCocoaExts/ELViewExts/**/*.h'
  end

  s.subspec 'StringExts' do |ss|
    ss.source_files = 'ELCocoaExts/ELStringExts/**/*.{h,m}'
    ss.public_header_files = 'ELCocoaExts/ELStringExts/ELStringExts.h', 'ELCocoaExts/ELStringExts/**/*.h'
  end

  s.subspec 'DictExts' do |ss|
    ss.source_files = 'ELCocoaExts/ELDictExts/**/*.{h,m}'
    ss.public_header_files = 'ELCocoaExts/ELDictExts/ELDictExts.h', 'ELCocoaExts/ELDictExts/**/*.h'
  end

  s.subspec 'GlobalExts' do |ss|
    ss.source_files = 'ELCocoaExts/ELGlobalExts/*.{h,m}'
    ss.public_header_files = 'ELCocoaExts/ELGlobalExts/ELScopeExts.h', 'ELCocoaExts/ELGlobalExts/ELExtsmetamacros.h'
  end


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
