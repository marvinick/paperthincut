require 'spec_helper'

describe Basket do
  it { should have_many (:items) }
end