#
# Cookbook Name:: rundeck
# Attribute:: default
#
# Author:: Panagiotis Papadomitsos (<pj@ezgr.net>)
#
# Copyright 2013, Panagiotis Papadomitsos
#
# Licensed under the Apache License, Version 2.0 (the 'License');
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an 'AS IS' BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Package
default['rundeck']['deb_version']       = '1.5.3-1-GA'
default['rundeck']['deb_url']           = "http://download.rundeck.org/deb/rundeck-#{node['rundeck']['deb_version']}.deb"
default['rundeck']['deb_checksum']      = '314b68c3ad25a29986efb76861cba1993023614d3981d5043f34cdbfe4bf267b'

default['rundeck']['rpm_version']       = '1.6.1-1.4.GA'
default['rundeck']['rpm_url']           = "http://download.rundeck.org/rpm/rundeck-#{node['rundeck']['rpm_version']}.noarch.rpm"
default['rundeck']['rpm_cfg_url']       = "http://download.rundeck.org/rpm/rundeck-config-#{node['rundeck']['rpm_version']}.noarch.rpm"
default['rundeck']['rpm_checksum']      = '9fd6c9a9043b5cfbc1013048514d5b294c85eebade322f8ab690cd7c43c6d508'
default['rundeck']['rpm_cfg_checksum']  = 'b96240e658f94bc90a444abe4c55e9562df96e6008ba90969cfeca88e51eb96c'

# Framework configuration
default['rundeck']['node_name']     = node.name
default['rundeck']['port']          = 4440
default['rundeck']['log4j_port']    = 4435
default['rundeck']['public_rss']    = false
default['rundeck']['logging_level'] = 'INFO'

# Administrator data bag
default['rundeck']['admin']['encrypted_data_bag'] = true
default['rundeck']['admin']['data_bag']           = 'credentials'
default['rundeck']['admin']['data_bag_id']        = 'rundeck'
# For Solo runs with no data bags
default['rundeck']['admin']['username']           = 'admin'
default['rundeck']['admin']['password']           = 'a73e319b433528eaa646' # Override this!
default['rundeck']['admin']['ssh_key']            = ''

# Rundeck 'admin' users
default['rundeck']['admins'] = %w{}

# Mail data bag
default['rundeck']['mail']          = {
	'hostname'		=> 'localhost',
	'port'     		=> 25,
	'username' 		=> nil,
	'password' 		=> nil,
	'from'     		=> 'ops@example.com',
	'tls'      		=> false
}
default['rundeck']['mail']['recipients_data_bag'] = 'users'
default['rundeck']['mail']['recipients_query']    = 'notify:true'
default['rundeck']['mail']['recipients_field']    = "['email']"
