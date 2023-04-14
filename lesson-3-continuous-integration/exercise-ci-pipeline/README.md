# Overview

## Instructions

The exercise assumes you'll be working in the Udacity workspace where all the necessary system dependencies are installed and setup, ready for use.

Make sure you've already completed the `Instructions and one-time setup` that is outlined [here](../../README.md#instructions-and-one-time-setup)

Start by copying the `ror-ci.yaml` that's located in the `starter` folder and paste it into the `.github/workflows` in the root of this project. This is the folder location where Github looks for Github Action workflows.

## The Developer Notes

You've just accepted a position on a new development team that loves using Ruby on Rails for all their development work. They'd love to get a new Continuous Integration system setup that will automatically build their application and run their tests whenever they open up a Pull Request against the `main` branch. Below, you'll find some useful notes that the development team has provided for you to get started. The following are intended to be run within the Udacity provided workspace to test the commands.

### Install project dependencies

These steps will help you build the application and verify that the correct version of Ruby and the dependencies were installed.
Start by navigating to the project folder, as the following commands should all be run from there.

```bash
cd lesson-3-continuous-integration/exercise-ci-pipeline/udacity-blog-app
```

Use the following command to install the project dependencies

```bash
bundle install
```

You can test connectivity by launching the development server:

```bash
bin/rails server
```

Then either open a new terminal and test the endpoint:

```bash
curl localhost:3000
```

### Run tests

After installing the dependencies, the following commands can be used to first setup the db to run the tests against

```bash
bundle exec rails db:create
bundle exec rails db:migrate
```

Then you can run the tests

```bash
bundle exec rails test
```

### Run lint

After the dependencies are installed and tests are successful, you should be able to run the following command to ensure code style is consistent across the application

```bash
rubocop
```

## Initial setup

If you'd like to work on your machine locally, we highly recommend the `rvm` tool to control the version of the `ruby` language you're running. Below are the steps, but you can always refer to [this site](https://rvm.io/rvm/install) for system specific instructions or in case you encounter issues. The commands under this heading are all one-time commands. Once `rvm` and `ruby` are working, you won't need to do these steps again in the workspace. 

Additionally, you won't need to accomplish these steps in your Github Action workflow. There's a [custom action you can utilize to setup ruby](https://github.com/ruby/setup-ruby#usage)

Setup the gpg keys

```bash
apt install dirmngr --install-recommends
gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
```

Install rvm. ℹ️ Note: the backslash is not a typo

```bash
\curl -sSL https://get.rvm.io | bash -s stable
```

Add rvm to your bash profile

```bash
echo "source /etc/profile.d/rvm.sh || true" >> $HOME/.bashrc
source $HOME/.bashrc
```

Test rvm is working

```bash
rvm version
```

Expected output

```bash
rvm 1.29.12 (latest) by Michal Papis, Piotr Kuczynski, Wayne E. Seguin [https://rvm.io]
```

Install the ruby version for the project. Refer to .ruby-version in the udacity-blog folder

```bash
rvm install --autolibs=packages ruby-3.1.1
```

Validate ruby installation

```bash
ruby --version
```

Expected output

```bash
ruby 3.1.1p18 (2022-02-18 revision 53f5fc4236) [x86_64-linux]
```

This concludes the one-time set up steps. You should now be able to run the commands found in the [Developer Notes](#the-developer-notes)
