require 'rubyfuri/response_parsers/base'

module Rubyfuri
  module ResponseParsers
    class String < Base
      def ruby
        @furiganas.join
      end
    end
  end
end
