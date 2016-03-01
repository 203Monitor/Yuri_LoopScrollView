Pod::Spec.new do |s|
  s.name         = "Yuri_LoopScrollView"
  s.version      = "0.0.1"
  s.summary      = "简单易用的app广告轮播组件"
  s.description  = <<-DESC
                    |Yuri_LoopScrollView|简单易用的app广告轮播组件|
                    | ---- | ---- |
                   DESC
  
  s.homepage     = "https://github.com/203Monitor/Yuri_LoopScrollView"
  s.license      = "MIT"
  s.author       = { "yuri" => "wtruth@sohu.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/203Monitor/Yuri_LoopScrollView.git", :tag => "0.0.1" }

  s.source_files = "Yuri_LoopScrollView/Yuri_LoopScrollView", "*.{h,m}"

  s.dependency "AFNetworking", "~> 3.0"

end
