#
# Cookbook Name:: rundeck
# Attribute:: ssh
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

default['rundeck']['ssh']['user'] = 'rundeck-ssh'
default['rundeck']['ssh']['user_uid'] = 9998
default['rundeck']['ssh']['user_gid'] = 9998
default['rundeck']['ssh']['user_pub_key'] = ""

default['rundeck']['ssh']['timeout'] = 30000
default['rundeck']['ssh']['port'] = 22
