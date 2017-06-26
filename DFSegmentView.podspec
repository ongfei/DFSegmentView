Pod::Spec.new do |s|
s.name         = "DFSegmentView"
s.version      = "0.0.1"
s.summary      = "DFSegmentView"
s.homepage     = "https://github.com/ongfei/DFSegmentView"
s.license      = 'MIT'
s.author       = { "ongfei" => "ong_fei@163.com" }
s.source       = { :git => "https://github.com/ongfei/DFSegmentView.git", :tag => s.version.to_s }
s.platform      = :ios, '7.0'
s.source_files = 'DFSegmentView/DFSegment/*.{h,m}'
s.requires_arc = true
s.dependency 'Masonry'
end
