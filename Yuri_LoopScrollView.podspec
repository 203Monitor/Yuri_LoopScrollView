Pod::Spec.new do |s|
	s.name         = "Yuri_LoopScrollView"
	s.version      = "1.0.0"
	s.summary      = "简单易用的app广告轮播组件"

	s.homepage     = "https://github.com/203Monitor/Yuri_LoopScrollView/wiki"
	s.license      = 'MIT'
	s.author       = { "Yuri" => "930502900@QQ.com" }
	s.platform     = :ios, "8.0"
	s.ios.deployment_target = "8.0"
	s.source       = { :git => "https://github.com/203Monitor/Yuri_LoopScrollView.git", :tag => s.version}
	s.source_files  = 'Yuri_LoopScrollView/Yuri_LoopScrollView/*.{h,m}'
	s.requires_arc = true
	s.dependency "AFNetworking", "~> 3.0"

end
