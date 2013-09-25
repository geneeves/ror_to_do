require 'spec_helper'

describe Task do
  it { should validate_presence_of :description }
  it { should validate_presence_of :list_id }
  it { should validate_numericality_of :list_id }
  it { should belong_to :list }
end
