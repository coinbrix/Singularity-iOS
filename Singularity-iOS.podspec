Pod::Spec.new do |s|
  s.name                = "Singularity-iOS"
  s.version             = "1.3.0"
  s.license             = "MIT"
  s.homepage            = "https://www.s9y.gg/"
  s.author              = { "Neobrix" => "devsupport@s9y.gg"  }

  s.summary             = "The Singularity SDK provides basic classes and method used across other framewroks"
  s.description         = "The Singularity SDK provides basic classes and method used across other framewroks. It used for manage entity and wallets"

  s.source              = { :git => "https://github.com/coinbrix/Singularity-iOS.git",
                            :tag => "#{s.version}"
                          }
  
  s.ios.deployment_target = "13.0"
  s.vendored_frameworks = 'SingularityKit.xcframework'

end
