require 'spec_helper'

describe HTML::Proofer::Utils do
  describe '::create_nokogiri' do
    it 'passes for a string' do
      noko = HTML::Proofer::Utils::create_nokogiri '<html lang="jp">'
      expect(noko.css('html').first['lang']).to eq 'jp'
    end
    it 'passes for a file' do
      noko = HTML::Proofer::Utils::create_nokogiri "#{FIXTURES_DIR}/utils/lang-jp.html"
      expect(noko.css('html').first['lang']).to eq 'jp'
    end
  end
end
