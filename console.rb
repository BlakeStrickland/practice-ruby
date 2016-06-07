require "./db/setup"
require "./lib/all"
binding.pry

Dir["#{File.dirname __FILE__}/**/*.rb"].each { |path| require path }
