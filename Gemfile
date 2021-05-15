# frozen_string_literal: true

source "https://rubygems.org"

# Lets you use
#
# gem 'foo_bar', :github => 'foo/bar'

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# gem "rails"

# -- ruby specs ---------------------------------------------------------------

group :test do
  gem "rspec"

  gem "pry-byebug"
  gem "timecop"
  gem "simplecov"
end
