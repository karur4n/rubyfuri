require 'spec_helper'

describe Rubyfuri::Client do
  let(:instance) do
      described_class.new(application_id)
  end

  let(:application_id) do
    'dj0zaiZpPU5obThhYmJQWDlWNyZzPWNvbnN1bWVyc2VjcmV0Jng9Zjc-'
  end

  let(:text) do
    '青い空'
  end

  let(:ruby) do
    'あおいそら'
  end

  describe '#furu' do
    subject do
      instance.furu(text)
    end

    # context '不正なアプリケーション ID が与えられた場合' do
      # let(:application_id) do
        # 'dummy0app0id'
      # end

      # it 'should fail' do
      # end
    # end

    context '正常なアプリケーション ID が与えられた場合' do
      context '与えられたオブジェクトが String の場合' do
        let(:text) do
          '青い空'
        end

        let(:ruby) do
          'あおいそら'
        end

        it 'ルビが返ってくること' do
          is_expected.to eq ruby
        end
      end

      context '与えられたオブジェクトが Array の場合' do
        let(:text) do
          ['青い空', '白い雲']
        end

        let(:ruby) do
          ['あおいそら', 'しろいくも']
        end

        it 'ルビが返ってくること' do
          is_expected.to eq ruby
        end
      end
    end
  end
end
