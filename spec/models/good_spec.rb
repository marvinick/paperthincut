require 'spec_helper'

describe Good do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:unit) }
  it { should have_many(:items) }
  it { should have_many(:good_distributors) }

end