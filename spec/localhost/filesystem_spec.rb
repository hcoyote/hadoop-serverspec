require 'spec_helper'

fs = [ 
	"/hdfs/01", 
	"/hdfs/02", 
	"/hdfs/03", 
	"/hdfs/04",
	"/hdfs/05", 
	"/hdfs/06", 
	"/hdfs/07", 
	"/hdfs/08",
	"/hdfs/09", 
	"/hdfs/10", 
	"/hdfs/11", 
	"/hdfs/12",
]

describe "HDFS Filesystems" do
	fs.each do |filesystem|

		describe file(filesystem) do
			it do
				should be_mounted.with(
					:type => 'ext4',
					:options => { 
						:rw => true,
						:noatime => true,
						:nodiratime => true
					}
				)
			end

			it { should be_owned_by 'root' }
			it { should be_grouped_into 'root' }
			it { should be_mode 755 }
		end
	end

			
end
