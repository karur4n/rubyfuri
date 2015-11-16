require 'faraday'

module Rubyfuri
  class YahooAPI
    BASE_URL = 'http://jlp.yahooapis.jp'
    API_PATH = '/FuriganaService/V1/furigana'

    class << self
      def request(app_id, text)
        res = http_client.get do |req|
          req.url API_PATH
          req.params[:appid] = app_id
          req.params[:sentence] = text
        end
      end

      private

      def http_client
        conn ||= Faraday.new(:url => BASE_URL) do |faraday|
          faraday.request  :url_encoded
          # faraday.response :logger
          faraday.adapter  Faraday.default_adapter
        end
      end
    end
  end
end
