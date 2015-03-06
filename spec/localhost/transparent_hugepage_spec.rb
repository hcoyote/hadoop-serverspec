# transparent huge pages defragmentation should never be on 
#
require 'spec_helper'
describe "Transparent Huge Page Support" do
	describe file('/sys/kernel/mm/transparent_hugepage/defrag'), :if => os[:family] == 'redhat' do
	  its(:content) { should match /\[never\]/ }
	end
	# transparent huge pages defragmentation should never be on 
	describe file('/sys/kernel/mm/transparent_hugepage/enabled'), :if => os[:family] == 'redhat' do
	  its(:content) { should match /\[never\]/ }
	end
end
