require 'spec_helper'

describe StopsComment do
  it { should belong_to :user }
  it { should belong_to :stop }
end
