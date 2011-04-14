# encoding: utf-8
require 'spec_helper'

describe User do
  describe '.happy?' do
    let(:alice) { User.new }

    describe 'お金をたくさん持っている' do
      before { alice.money = 1500 }
      subject { alice.happy? }
      it { should be_true }
    end

    describe 'お金をあまり持っていない' do
      before { alice.money = 500 }
      subject { alice.happy? }
      it { should be_false }
    end
  end
end
