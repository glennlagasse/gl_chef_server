#
# Cookbook:: gl_chef_server
# Attributes:: default
#
# Copyright:: 2021, Glenn Lagasse
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

default['chef-server']['accept_license'] = true

default['gl_chef_server']['user']['username'] = 'glagasse'
default['gl_chef_server']['user']['first_name'] = 'Glenn'
default['gl_chef_server']['user']['last_name'] = 'Lagasse'
default['gl_chef_server']['user']['email'] = 'glagasse@glagasse.com'
default['gl_chef_server']['user']['password'] = 'P@ssw0rd'
default['gl_chef_server']['user']['key_path'] = "/root/#{node['gl_chef_server']['user']['username']}.pem"

default['gl_chef_server']['org']['name'] = 'default'
default['gl_chef_server']['org']['full_name'] = 'Default'
default['gl_chef_server']['org']['admins'] = ['glagasse']
default['gl_chef_server']['org']['key_path'] = "/root/#{node['gl_chef_server']['org']['name']}-validator.pem"
