require 'spec_helper'

describe Listing do
  it { should validate_presence_of :address }
  it { should validate_presence_of :neighborhood }
  it { should validate_presence_of :city }
  it { should validate_presence_of :price }
  it { should validate_presence_of :home_type }
  it { should validate_presence_of :description }

end



