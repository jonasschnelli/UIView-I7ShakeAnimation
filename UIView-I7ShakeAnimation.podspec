Pod::Spec.new do |s|
  s.name         = "UIView-I7ShakeAnimation"
  s.version      = "0.0.1"
  s.summary      = "very easy way to shake a UIView."
  s.homepage     = "www.include7.ch"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Jonas Schnelli" => "email@address.com" }
  s.platform     = :ios, '5.0'
  s.source       = { :git => "https://github.com/jonasschnelli/UIView-I7ShakeAnimation.git", :commit => "d203fc594ab438779d241b6e8f23c23367bbd366" }
  s.source_files  = 'UIView+I7ShakeAnimation.{h,m}'
  s.requires_arc = true
end
