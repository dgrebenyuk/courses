require 'rails_helper'

RSpec.describe Book, :type => :model do
  describe '#search' do
    before do
      Book.destroy_all
    end

    let!(:book1) { create(:book) }
    let!(:book2) { create(:book) }
    let!(:book3) { create(:book, title: 'Best Test') }
    it 'should search book by title' do
      expect(Book.search('Test')).to include(book3)
    end

    let(:book4) { create(:book, title: 'Hello World') }
    it 'should not return unsufficient results' do
      expect(Book.search('Test')).to_not include(book4)
    end
  end

  describe '.testing stubs' do
    context 'return nil' do
      before do
        allow(Book).to receive(:search).with('Test')
      end

      it 'should not return anything' do
        expect(Book.search('Test')).to be_nil
      end
    end
  end
end
