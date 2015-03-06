require 'spec_helper'

describe "Hadoop Datanode Daemon" do

	describe package('hadoop-hdfs-datanode'), :if => os[:family] == 'redhat' do
	  it { should be_installed }
	end

	describe service('hadoop-hdfs-datanode'), :if => os[:family] == 'redhat' do
	  it { should be_enabled }
	  it { should be_running }
	end

	describe port(50020) do
	  it { should be_listening }
	end
end
