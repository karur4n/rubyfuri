module Rubyfuri
  class Client
    def initialize(app_id)
      @app_id = app_id
    end

    def furu(text)
      if text.class == String
        sentence = text
        res = YahooAPI.request(@app_id, sentence)
        ResponseParsers::String.new(text, res.body).ruby
      else text.class == Array
        sentence = text.join
        res = YahooAPI.request(@app_id, sentence)
        ResponseParsers::Array.new(text, res.body).ruby
      end
    end
  end
end
