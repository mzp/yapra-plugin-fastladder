require 'yapra/plugin/base'
require 'rest-client'
require 'uri'
require 'json'

module Yapra::Plugin::Publish
  class Fastladder < Yapra::Plugin::Base
    def run(data)
      data.reverse_each do|item|
        params = {
          feedtitle: config['title'],
          feedlink:  config['feedlink'],
          title:  item.title,
          link:   item.link,
          body:   item.description,
          author: item.author,
          published_date: item.pubDate
        }
        RestClient.post(URI.join(config['url'],'/rpc/update_feed').to_s, json: params.to_json, api_key: config['apikey'])
      end
    end
  end
end
