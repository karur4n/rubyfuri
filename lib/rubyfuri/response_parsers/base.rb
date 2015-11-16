require 'nokogiri'

module Rubyfuri
  module ResponseParsers
    class Base
      def initialize(original, xml)
        @original = original
        @furigana_doc = Nokogiri::HTML(xml)
        @furiganas = []
        @surfaces = []
        build_furiganas_and_surfaces
      end

      def ruby
        raise NotImplementedError
      end

      private

      def build_furiganas_and_surfaces
        @furigana_doc.xpath('//word').each_with_index do |word|
          surface = word.xpath('surface').text
          furigana = word.xpath('furigana').text

          if !(furigana.empty?)
            @furiganas << furigana
          else
            # 英数のときは surface にその文字・数字が入ってる
            # スペースのときは surface が empty となっている
            if !(surface.empty?)
              @furiganas << surface
            else
              @furiganas << ' '
            end
          end

          @surfaces << surface
        end
      end
    end
  end
end
