![Ruby Version](https://img.shields.io/badge/ruby-2.7.2-blue)

# A ruby playground quickstart

This project provides a one-step quick start template to start a ruby project. It is set up to include the following:

- ruby-version: is pinned to 2.7.2 via `.ruby-version`
- Gemfile

## How to use

### Clone and clear

    # see https://stackoverflow.com/questions/11497457/git-clone-without-git-directory
    git clone --depth=1 --branch=master https://github.com/radiospiel/ruby-playground.git path/to/new/repo
    cd path/to/new/repo
    rm -rf .git
    bundle install

### Ruby code setup

A playgroup app is loaded by running

```ruby
load "config/application.rb"
```

This then does the following:

1. adjust library path to allow requiring from `lib.static`;
2. loads all initializers, from `config/initializers/*.rb`;
3. loads all library files, from `lib/*.rb`;
4. loads all application files, from `app/models/*.rb`.

This should provide a easy start for gem-like projects (add code in `./lib`), and for application-like projects (add code mostly to `./app`).

### Testing

The playground comes with a ready-to-roll rspec setup; simply run

    rspec

### Rubocop

The playground comes with a ready-to-roll rspec setup; simply run

    rubocop

## Various notes

### `direnv`

This repository comes with a `.envrc` file, which adds `./bin/` to the current path
once inside this repository. This feature is especially nice when running rspec, 
because it lets you copy failed specs directly from the rspec failure output.

To make use of that feature you need to have `direnv` installed, see https://github.com/direnv/direnv
