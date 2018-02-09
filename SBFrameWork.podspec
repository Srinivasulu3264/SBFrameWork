#
#  Be sure to run `pod spec lint SBFrameWork.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|



  s.name         = "SBFrameWork"

  s.version      = "0.0.3"

  s.summary      = "It will import the storyboard , xib files"

  s.description  = " It contains two view controllers. one VC contains 2 buttons. and 			    another view controller will display the webpage"

  s.homepage     = "http://vmokshagroup.com"

  s.license      = "MIT"

  s.author       = { "Srinivasulu3264" => "srinivasulu.budharapu@vmokshagroup.com" }


  s.platform     = :ios, "9.0"

  s.ios.deployment_target = "11.0"



  s.source       = { :git => "https://github.com/Srinivasulu3264/SBFrameWork.git", :tag => "0.0.3" }

  s.source_files  = "SBFrameWork", "SBFrameWork/**/*.{h,m,swift}"

  s.resources = "SBFrameWork/**/*.{png,jpeg,jpg,storyboard,xib}"

  s.requires_arc = true

`echo "3.2" > .swift-version`

end
