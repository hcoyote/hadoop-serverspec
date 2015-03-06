require 'spec_helper'

describe "Hardware Configuration" do
	describe linux_kernel_parameter('kernel.panic') do
		its(:value) { should eq 300 }
	end
end
