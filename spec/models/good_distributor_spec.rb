require 'spec_helper'

describe GoodDistributor do
  it { should belong_to (:good) }
  it { should belong_to (:distributor) }
end