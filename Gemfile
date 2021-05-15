# frozen_string_literal: true

source "https://rubygems.org"

# Lets you use
#
# gem 'foo_bar', :github => 'foo/bar'

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# gem "rails"

# -- various simple gems -----------------------------------------------------

# simple SQL client for Postgresql; see https://github.com/radiospiel/simple-sql
# gem "pg"
# gem "simple-sql"

# simple HTTP client; see https://github.com/radiospiel/simple-http
# gem "simple-http"

# simple CLI builder; see https://github.com/radiospiel/simple-cli
# gem "simple-cli"

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
