require 'json'
package_json = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name           = "react-native-image-cropping"
  s.version        = package_json["version"]
  s.summary        = package_json["description"]
  s.homepage       = "BestestApp/react-native-image-cropping#master"
  s.license        = package_json["license"]
  s.author         = { package_json["author"] => package_json["author"] }
  s.platform       = :ios, "7.0"
  s.source         = { :git => "#{package_json["repository"]["url"]}.git", :tag => "v#{s.version}" }
  s.source_files   = '*.{h,m}'

  s.subspec 'Core' do |cs|
    cs.dependency 'React'
    cs.dependency 'TOCropViewController'
  end

end
