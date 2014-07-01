require 'spec_helper'

describe User do
  it { should validate_uniqueness_of :username }
  it { should have_many(:roadtrips).through(:roadtripsComments)}
  it { should have_many(:stops).through(:stopsComments)}
  it { should have_many :stopsComments}
  it { should have_many :roadtripsComments}
  it { should have_many :stops}
  it { should have_many :roadtrips}

end
