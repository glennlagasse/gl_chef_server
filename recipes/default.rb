#
# Cookbook:: gl_chef_server
# Recipe:: default
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

include_recipe 'chef-server::default'

chef_user node['gl_chef_server']['user']['username'] do
  first_name node['gl_chef_server']['user']['first_name']
  last_name node['gl_chef_server']['user']['last_name']
  email node['gl_chef_server']['user']['email']
  password node['gl_chef_server']['user']['password']
  key_path node['gl_chef_server']['user']['key_path']
end

chef_org node['gl_chef_server']['org']['name'] do
  org_full_name node['gl_chef_server']['org']['full_name']
  admins node['gl_chef_server']['org']['admins']
  key_path node['gl_chef_server']['org']['key_path']
end
