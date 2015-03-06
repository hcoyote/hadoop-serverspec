require 'spec_helper'

describe "Network Configuration" do

	describe "Physical Network" do 
		describe interface('em1') do
		  it { should exist }
		  its(:speed) { should eq 1000 }
		end
		describe interface('em2') do
		  it { should exist }
		  its(:speed) { should eq 1000 }
		end
		describe interface('p3p1') do
		  it { should exist }
		  its(:speed) { should eq 1000 }
		end
	end

	describe "LACP" do
		describe bond('bond0') do
			it { should exist }
			it { should have_interface 'em1' }
			it { should have_interface 'em2' }
			it { should have_interface 'p3p1' } 
		end
	end 

	describe "LLDP" do
		describe package('lldpd'), :if => os[:family] == 'redhat' do
		  it { should be_installed }
		end

		describe service('lldpd'), :if => os[:family] == 'redhat' do
		  it { should be_enabled }
		  it { should be_running }
		end
	end



end
