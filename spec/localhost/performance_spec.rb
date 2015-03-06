# transparent huge pages defragmentation should never be on 
#
require 'spec_helper'
describe "CPU Kernel Configurations for Max Performance" do
	describe file('/proc/cmdline'), :if => os[:family] == 'redhat' do
	  its(:content) { should match /intel_idle.max_cstate=0?/ }
	end
	describe linux_kernel_parameter('vm.swappiness') do
	  its(:value) { should eq 0 }
 	end
end
