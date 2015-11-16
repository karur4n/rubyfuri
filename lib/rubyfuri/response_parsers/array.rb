require 'rubyfuri/response_parsers/base'


module Rubyfuri
  module ResponseParsers
    class Array < Base
      def initialize(original, xml)
        @original = original
        @furigana_doc = Nokogiri::HTML(xml)
        @furiganas = []
        @surfaces = []
        build_furiganas_and_surfaces
      end

      def ruby
        surface_result = []
        furigana_result = []
        i = 0
        j = 0

        @original.each do |original|
          surface_result[i] = ''
          furigana_result[i] = ''

          while(original != surface_result[i])
            surface_result[i].concat @surfaces[j]
            furigana_result[i].concat @furiganas[j]
            j += 1
          end
          i += 1
        end
        furigana_result
      end
    end
  end
end
