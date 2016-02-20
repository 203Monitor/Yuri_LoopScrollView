Pod::Spec.new do |s|
 s.name         = "Yuri_LoopScrollView"
 s.version      = "1.0"
 s.summary      = "简单易用的app广告轮播组件"

 s.description  = <<-DESC
                   |Yuri_LoopScrollView|简单易用的app广告轮播组件|
                   | ---- | ---- |

                   * A longer description of Yuri_LoopScrollView in Markdown format.
                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC
 s.homepage     = ""
 s.license      = "MIT"
 s.author       = { "Yuri" => "930502900@QQ.com" }
 s.platform     = :ios, '8.0'
 s.source       = { :git => "https://github.com/203Monitor/Yuri_LoopScrollView.git", :tag => "1.0" }
 s.source_files = "Yuri_LoopScrollView/Yuri_LoopScrollView/*"


  # s.public_header_files = "Classes/**/*.h"
 s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
 s.dependency "AFNetworking", "~> 3.0"

end
