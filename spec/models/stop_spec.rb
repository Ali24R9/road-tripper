require 'spec_helper'

describe Stop do
  it { should have_many(:users).through(:stopsComments)}
  it { should have_many :stopsComments}
  it { should have_and_belong_to_many :roadtrips }
end
