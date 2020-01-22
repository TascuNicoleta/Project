Pod::Spec.new do |s|
  s.name          = "Framework"
  s.version       = "0.0.1"
  s.summary       = "Framework for apps"
  s.homepage      = "https://github.com/TascuNicoleta/Project"
  s.license       = "MIT"
  s.author        = "Tascu Nicoleta"
  s.platform      = :ios, "11.0"
  s.swift_version = "5.0"
  s.source        = {
    :git => "https://github.com/TascuNicoleta/Project.git",
    :tag => "#{s.version}"
  }
  s.source_files        = "Framework"
end