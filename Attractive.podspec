Pod::Spec.new do |s|
s.name         = "Attractive"
s.version      = "0.0.3"
s.summary      = "Attractive is a modern and seeable ViewController library."
s.license      = { :type => 'MIT', :file => 'LICENSE' }
s.homepage     = "https://github.com/p1atdev/Attractive"
s.author       = { "p1atdev" => "shu_teiei@outlook.jp" }
s.source       = { :git => "https://github.com/p1atdev/Attractive.git", :tag => "#{s.version}" }
s.platform     = :ios, "9.0"
s.requires_arc = true
s.source_files = 'Attractive/*.{swift}'
# s.resources    = 'Attractive/**/*.{xib,png}'
s.swift_version = "5.0"
end
