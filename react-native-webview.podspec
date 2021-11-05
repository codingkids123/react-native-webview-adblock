require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = 'react-native-webview'
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platforms    = { :ios => "9.0", :osx => "10.13" }

  s.source       = { :git => "https://github.com/drawerapp/react-native-webview-adblock.git", :branch => "adblock" }
  s.source_files  = "apple/**/*.{h,m}"
  s.resource_bundles = {
    'RNCWebView' => ["apple/**/*.json"]
  }

  s.dependency 'React-Core'
end
