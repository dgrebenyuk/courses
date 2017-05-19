require 'rails_helper'
require 'image.rb'

describe Image do
  let(:response) { double('faraday_response', status: status, headers: headers) }
  before do
    allow(Faraday).to receive(:get).with(anything()).and_return(response)
  end

  describe '#download' do
    context 'failed status downloads' do
      let(:status) { 404 }
      let(:headers) { {} }
      it 'should raise error if url is broken' do
        expect{Image.download('')}.to raise_error(ArgumentError)
      end
    end

    context 'wrong content type' do
      let(:status) { 200 }
      let(:headers) { {'content-type' => 'plain/text'} }
      it 'should raise error if content is not an image' do
        expect{Image.download('')}.to raise_error(TypeError)
      end
    end
  end
end
