# yapra-plugin-fastladder

This is yapra plugin for fastladder.

## Installation

    gem install yapra-plugin-fastladder

## Usage

    - module: Feed::Load
      config:
        url: http://example.com/rss
    - module: Publish::Fastladder
      config:
        title: FeedTitle
        feedlink: http://example.com
        url:      http://dev.fastlader/
        apikey:   e3ad9bca38c341e28834ff881ee32d59 

