# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")

require 'motion/project/template/ios'
require 'bundler'
Bundler.require

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'FlatUIKitRubymotionExample'
  app.identifier = 'com.example.flatuikit-rubymotion'
  app.device_family = :iphone
  app.interface_orientations = [:portrait]

  # PODS
  app.pods do
    pod 'SVProgressHUD'
    pod 'FlatUIKit', git: 'https://github.com/Grouper/FlatUIKit.git'
  end
end