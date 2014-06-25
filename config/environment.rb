# Load the Rails application.
require File.expand_path('../application', __FILE__)

ActiveRecord::Base.pluralize_table_names = false

# Initialize the Rails application.
Rails.application.initialize!

if Rails.env.development?
	  Rails.logger = Le.new('6e4cc199-5964-44fd-a94e-40df9bfff014', debug: true)
else
	  Rails.logger = Le.new('6e4cc199-5964-44fd-a94e-40df9bfff014', debug: true)
end
