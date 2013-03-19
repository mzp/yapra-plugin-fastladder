require 'yapra/plugin/base'
require 'rest-client'
require 'uri'
require 'json'

module Yapra::Plugin::Publish
  class Fastladder < Yapra::Plugin::Base
    def run(data)
      feeds = data.map do|item|
        {
          feedtitle: config['feedtitle'],
          feedlink:  config['feedlink'],
          title:  item.title,
          link:   item.link,
          body:   item.description,
          author: item.author,
          published_date: item.pubDate
        }
      end.reverse

      result = RestClient.post(URI.join(config['url'],'/rpc/update_feeds').to_s,
                               feeds: feeds.to_json,
                               api_key: config['apikey'])
      raise "post error: #{result}" unless JSON.parse(result)['result']
    end
  end
end
