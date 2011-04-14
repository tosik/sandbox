require 'spec_helper'

describe User do
  describe '.happy?' do
    let(:alice) { User.new(:money => 1500) }
    subject { alice.happy? }
    it { should be_true }
  end
end
