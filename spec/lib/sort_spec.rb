require 'spec_helper'

RSpec.describe Algorithm::Sort do
  let(:object) { Algorithm::Sort.new((0..last_num).to_a.shuffle!) }
  let(:expected_result) { (0..last_num).to_a }

  describe '#bubble_sort' do
    let(:last_num) { 23 }
    subject { object.bubble_sort }
    it { is_expected.to eq expected_result }
  end

  describe '.merge' do
    let(:left) { [0, 9, 1, 8, 7, 6] }
    let(:right) { [2, 3, 5] }
    subject { Algorithm::Sort.merge(left, right) }
    it { is_expected.to eq [0, 2, 3, 5, 9, 1, 8, 7, 6] }
  end

  describe '#merge_sort' do
    let(:last_num) { 33 }
    subject { object.merge_sort }
    it { is_expected.to eq expected_result }
  end
end
