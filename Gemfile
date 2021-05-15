# frozen_string_literal: true

source "https://rubygems.org"

# Lets you use
#
# gem 'foo_bar', :github => 'foo/bar'

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# gem "rails"


# -- development helpers ------------------------------------------------------

group :development do
  gem "rubocop", "~> 1.14.0"
  gem "rubocop-rspec"
end

# -- ruby specs ---------------------------------------------------------------

group :development, :test do
  gem "pry-byebug"
end

group :test do
  gem "rspec"

  gem "timecop"
  gem "simplecov"
end
