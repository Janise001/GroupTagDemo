source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '9.0'
use_frameworks!
#Framework

install! 'cocoapods', :deterministic_uuids => false

abstract_target 'GroupTagDemo' do
    
    pod 'FlexLayout'
   pod 'RxSwift'
   pod 'RxCocoa'
   pod 'Alamofire'
   pod 'SnapKit'
   pod 'IQKeyboardManagerSwift'
    
    target:'GroupTagDemo' do
        target 'GroupTagDemoUITests' do
            inherit! :search_paths
        end
        target 'GroupTagDemoTests' do
            inherit! :search_paths
        end
    end
end

