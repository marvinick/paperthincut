require 'spec_helper'

describe Request do
  it { should validate_presence_of (:name) }
  it { should validate_presence_of (:email) }
  it { should have_many (:items) }
end