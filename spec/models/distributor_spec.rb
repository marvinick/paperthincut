require 'spec_helper'

describe Distributor do
  it { should validate_presence_of (:name) }
  it { should have_many (:good_distributors) }
end