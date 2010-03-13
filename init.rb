Dir[File.join(File.dirname(__FILE__), 'vendor/*/lib')].each do |path|
  $LOAD_PATH.unshift path
end

require 'ckeditor'

# make plugin controller available to app
config.load_paths += %W(#{Ckeditor::PLUGIN_CONTROLLER_PATH} #{Ckeditor::PLUGIN_HELPER_PATH})

#Rails::Initializer.run(:set_load_path, config)
#
#initializer :load_all_active_support do
#require "active_support/all" unless config.active_support.bare
#end
# 
## Set the $LOAD_PATH based on the value of
## Configuration#load_paths. Duplicates are removed.
#initializer :set_load_path do
#config.paths.add_to_load_path
#$LOAD_PATH.uniq!
#end

# require the controller
require 'ckeditor_controller'
