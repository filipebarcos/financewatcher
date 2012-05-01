require "spec_helper"

describe User, "validations" do
  subject { User.create.errors }
  
  its([:name]) { should_not be_empty }
  its([:email]) { should_not be_empty }  
  its([:password]) { should_not be_empty }
  
end