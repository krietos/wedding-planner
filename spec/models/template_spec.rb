require 'spec_helper'

describe Template do
  it { should validate_presence_of :name }
  it { should validate_presence_of :percentage }
end
