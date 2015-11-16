require 'spec_helper'

describe Rubyfuri::YahooAPI do
  describe '#request' do
    let(:application_id) do
      'dj0zaiZpPU5obThhYmJQWDlWNyZzPWNvbnN1bWVyc2VjcmV0Jng9Zjc-'
    end

    let(:response) do
      described_class.request(application_id, '青い空')
    end

    subject do
      response.status
    end

    context '不正な app id が与えられた場合' do
      let(:application_id) do
        'dummy0app0id'
      end

      it '403 を受け取る' do
        is_expected.to eq 403
      end
    end

    context '正常な app id が与えられた場合' do
      it '200 を受け取る' do
        is_expected.to eq 200
      end
    end
  end
end
