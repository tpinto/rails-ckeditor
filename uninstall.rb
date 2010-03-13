directory = File.join(RAILS.root, '/vendor/plugins/rails-ckeditor/')

require "#{directory}lib/ckeditor/utils"
require "#{directory}lib/ckeditor/version"

puts "** Uninstalling CKEditor Plugin version #{Ckeditor::Version.current}...."

Ckeditor::Utils.destroy
