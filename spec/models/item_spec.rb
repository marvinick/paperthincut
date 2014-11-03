require 'spec_helper'

describe Item do
  it { should belong_to (:good) }
  it { should belong_to (:basket) }
  it { should belong_to (:request) }
end