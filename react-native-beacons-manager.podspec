require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "react-native-beacons-manager"
  s.version      = package['version']
  s.summary      = package['description'] || "React Native library for iBeacons with podspec support"
  s.homepage     = "https://github.com/maria-faulisi/react-native-beacons-manager"
  s.license      = package['license'] || "MIT"
  s.author       = package['author'] || { "Maria Faulisi" => "maria-faulisi.com" }
  s.platform     = :ios, "11.0"
  s.source       = { :git => "https://github.com/maria-faulisi/react-native-beacons-manager.git", :tag => "#{s.version}" }
  s.source_files = "ios/**/*.{h,m}"
  s.requires_arc = true
  s.dependency   "React-Core"
end
