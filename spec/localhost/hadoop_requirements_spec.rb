require 'spec_helper'
describe "Hadoop requirements to run" do
	describe file('/etc/hosts'), :if => os[:family] == 'redhat' do
	  it { should contain /127.0.0.1  localhost localhost.localdomain/ }
	  it { should contain host_inventory['fqdn'] }
	end
	describe host('127.0.0.1') do
	  it { should be_resolvable.by('hosts') }
	end
	describe host('localhost') do
	  it { should be_resolvable.by('hosts') }
	end
	describe host(host_inventory['fqdn']) do
	  it { should be_resolvable.by('hosts') }
	end
end
