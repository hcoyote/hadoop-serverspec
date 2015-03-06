require 'spec_helper'

describe "Hadoop Tasktracker Daemon" do

	describe package('hadoop-0.20-mapreduce-tasktracker'), :if => os[:family] == 'redhat' do
	  it { should be_installed }
	end

	describe service('hadoop-0.20-mapreduce-tasktracker'), :if => os[:family] == 'redhat' do
	  it { should be_enabled }
	  it { should be_running }
	end
end
