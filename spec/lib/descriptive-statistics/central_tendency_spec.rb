require 'spec_helper'

describe DescriptiveStatistics::CentralTendency do
  describe '#sum' do
    it 'returns the amount attained by adding all numbers in the array' do
      DescriptiveStatistics.new([1,2,6]).sum.should == 9
    end

    it 'returns 0 if empty' do
      DescriptiveStatistics.new([]).sum.should == 0
    end
  end

  describe '#mean' do
    it 'returns the sum of the values over the count of the values' do
      DescriptiveStatistics.new([1,2,6]).mean.should == 3
    end

    it 'returns nil if empty' do
      DescriptiveStatistics.new([]).mean.should be_nil
    end
  end

  describe '#median' do
    it 'returns the value lying at the midpoint of the array' do
      DescriptiveStatistics.new([1,2,6]).median.should == 2
    end

    it 'returns the mean of the two midpoint values if the array length is even' do
      DescriptiveStatistics.new([1,2,3,6]).median.should == 2.5
    end

    it 'returns nil if empty' do
      DescriptiveStatistics.new([]).median.should be_nil
    end
  end

  describe '#mode' do
    it 'returns the most frequent value' do
      DescriptiveStatistics.new([1,1,2,46]).mode.should == 1
    end

    it 'returns nil if there is no most frequent value' do
      DescriptiveStatistics.new([1,2,3]).mode.should be_nil
    end

    it 'returns nil if empty' do
      DescriptiveStatistics.new([]).mode.should be_nil
    end
  end
end
