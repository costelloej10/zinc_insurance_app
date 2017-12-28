# Load the Rails application.
require_relative 'application'

Dir.glob( Rails.root.join("config/constants/*") ).each do |file|
  yml_file = YAML::load_file( file )
  yml = yml_file[Rails.env].nil? ? yml_file["default"] : yml_file[Rails.env]
  Kernel.const_set File.basename(file, ".yml").upcase, yml
end

# Initialize the Rails application.
Rails.application.initialize!
