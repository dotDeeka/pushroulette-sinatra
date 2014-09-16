pushroulette-sinatra
====================

RESTFul PushRoulette

## Installation

    git clone https://github.com/Astonish-Results/pushroulette-sinatra
```bash
sudo mkdir -p /etc/pushroulette/library
sudo chown -R <you>:<your group> /etc/pushroulette
chmod +x pushroulette-sinatra/pushroulette.rb
```

## Dependencies

Install bundler if not already installed:
```bash
gem install bundler
```

Run Bundle install to install dependencies
```bash
bundle install
```

Requires [ffmpeg](http://www.ffmpeg.org/) for encoding and decoding all non-wav files (which work natively)

## Getting ffmpeg set up

Mac (using [homebrew](http://brew.sh)):

```bash
brew install ffmpeg --with-libvorbis --with-ffplay --with-theora
```

Linux (using aptitude):

```bash
apt-get install ffmpeg libavcodec-extra-53
```

## Run

```bash
# for development run
thin start --debug --trace

# to run as daemon
thin start -d
# to kill this process run
thin stop
./pushroulette.rb
```
