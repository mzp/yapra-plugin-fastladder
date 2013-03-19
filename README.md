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
        feedtitle: FeedTitle
        feedlink: http://example.com
        url:      http://dev.fastlader/
        apikey:   e3ad9bca38c341e28834ff881ee32d59 

## Notes

See also [OpenFastladder クローラー向け RPC について](http://ssig33.com/text/OpenFastladder%20%E3%82%AF%E3%83%AD%E3%83%BC%E3%83%A9%E3%83%BC%E5%90%91%E3%81%91%20RPC%20%E3%81%AB%E3%81%A4%E3%81%84%E3%81%A6).
