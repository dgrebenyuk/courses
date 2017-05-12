require 'rails_helper'
require 'array.rb'

describe Array do
  subject { [1, 2, 3, 1, 4, 5, 6, 1, 2, 3, 1, 2, 3, 3] }

  it 'should return most frequent element' do
    expect(subject.top).to be 1
  end

  it 'should return most frequent element if negative count was passed' do
    expect(subject.top(-5)).to be 1
  end

  it 'should return array of most frequent elements if count was passes' do
    expect(subject.top(3)).to eq [1, 3, 2]
  end
end
