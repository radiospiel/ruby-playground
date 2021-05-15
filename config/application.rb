# frozen_string_literal: true

$LOAD_PATH << "#{Dir.getwd}/lib.static"
$LOAD_PATH << "#{Dir.getwd}/lib"

# load initializers
Dir.glob("config/initializers/*.rb").sort.each do |path|
  load path
end

Dir.glob("lib/*.rb").sort.each do |path|
  load path
end

# load application "models"
Dir.glob("app/models/*.rb").sort.each do |path|
  load path
end
