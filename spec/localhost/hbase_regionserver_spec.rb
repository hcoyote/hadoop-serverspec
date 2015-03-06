require 'spec_helper'

describe "HBase Regionserver" do

	describe package('hbase-regionserver'), :if => os[:family] == 'redhat' do
	  it { should be_installed }
	end

	describe service('hbase-regionserver'), :if => os[:family] == 'redhat' do
	  it { should be_enabled }
	  it { should be_running }
	end

	describe port(60030) do
	  it { should be_listening }
	end
end
