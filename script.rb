require 'sprockets'
require 'sprockets/jsminc_compressor'

project_root = File.expand_path(File.dirname(__FILE__))
assets = Sprockets::Environment.new(project_root) do |env|
  env.register_bundle_processor 'application/javascript', Sprockets::JSMincCompressor.new
end
assets.append_path(File.join(project_root, 'javascript'))

puts assets.find_asset('application.js')
