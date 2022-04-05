#
# Cookbook:: gl_chef_server
# Recipe:: default
#
# Copyright:: 2022, Glenn Lagasse
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

edit_resource!(:chef_ingredient, 'chef-server') do
  platform 'ubuntu'
  platform_version '20.04'
end if platform?('debian')

user = node['gl_chef_server']['user']

chef_user user['username'] do
  serveradmin true
  first_name user['first_name']
  last_name user['last_name']
  email user['email']
  password user['password']
  key_path user['key_path']
end

org = node['gl_chef_server']['org']

chef_org org['name'] do
  org_full_name org['full_name']
  admins org['admins']
  key_path org['key_path']
end
