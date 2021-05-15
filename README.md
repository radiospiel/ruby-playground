![Ruby Version](https://img.shields.io/badge/ruby-2.7.2-blue)

# A ruby playground quickstart

## Quickstart

To check out and prepare the ruby playground in `path/to/new/dir` run

    curl -s https://raw.githubusercontent.com/radiospiel/ruby-playground/scripts/setup.sh | bash -s - path/to/new/dir

Note that there is a script `scripts/ruby-playground` that one can install in
`/usr/local/bin` which wraps the above command into a simple to run script.

## Quick description

This project provides a one-step quick start template to start a ruby project. It is set up to include the following:

- ruby-version: is pinned to 2.7.2 via `.ruby-version`
- rspec
- rubocop
- pry
- quick development scripts `./scripts/{console,test,watch}`
- a basic ruby application configuration in `./config`

The ruby playground should provide a easy start for gem-like projects (add code in `./lib`), and for application-like projects (add code mostly to `./app`). It provides an easy set up to run specs and rubocop.

## Details

1. **Checkout and prepare**

    To check out and prepare the ruby playground in `path/to/new/dir` run
    
        curl -s https://raw.githubusercontent.com/radiospiel/ruby-playground/master/scripts/setup.sh | bash -s - path/to/new/dir
    
    Note that there is a standalone [ruby-playground](https://raw.githubusercontent.com/radiospiel/ruby-playground/master/scripts/ruby-playground)  script that one can install locally, which wraps the `curl` command.

2. **Ruby code setup**

    To load a ruby playground app run, from your ruby source code: 
    
    ```ruby
    load "config/application.rb"
    ```

    This does the following:

    1. adjust library path to allow requiring from `lib.static`;
    2. loads all initializers, from `config/initializers/*.rb`;
    3. loads all library files, from `lib/*.rb`;
    4. loads all application files, from `app/models/*.rb`.

3. **Testing:** to run tests run `scripts/test` (or just `bundle exec rspec`).
4. **rubocop:** rubocop is prebundled; run `bundle exec rubocop`.


5. **Github actions:** the playground comes with a `ruby-test` github action. Simply push to github, have
actions generally enabled, and enjoy the workflow.

## Bundled gems

The Gemfile bundles the following gems:

- `rubocop`
- `pry`, with the "byebug" and "doc" extenstions
- `timecop`
- `simplecov`
- `expectation`, function and method contracts, see https://github.com/radiospiel/expectation

The following gems can easily activated in the Gemfile, but are not bundled by default:

- `simple-sql`: simple SQL client for Postgresql. The playground also has a `config/database.yml` file for this, and adds a `bin/pg` script, which runs a `psql` client against the configured postgres database; see https://github.com/radiospiel/simple-sql 
- `simple-http`: simple HTTP client; see https://github.com/radiospiel/simple-http
- `simple-cli`: simple CLI builder; see https://github.com/radiospiel/simple-cli

## Other notes

- **`direnv` support**

This repository comes with a `.envrc` file, which adds `./bin/` to the current path once inside this repository. This feature is especially nice when running rspec, because it lets you copy failed specs directly from the rspec failure output.

To make use of that feature you need to have `direnv` installed, see https://github.com/direnv/direnv.

- **scripts and shortcuts**

The `./scripts` directory contains a number of development helper scripts. They require a bash shell; macOS' version (3.2.57) is good enough.

- `scripts/console`: loads an app and starts a Pry console;
- `scripts/test`: runs rspec, with a given sets of arguments;
- `scripts/watch`: watches a specified set of folders (see `scripts/watch`), and runs tests on changed files.

I recommend to add the following aliases to your shell `.profile`, and use this consistently across all your repositories:

```bash
alias C='scripts/console'
alias T='scripts/test'
alias W='scripts/watch'
```

- **Want to add a github action badge?**

Here is a pointer: see https://docs.github.com/en/actions/managing-workflow-runs/adding-a-workflow-status-badge
