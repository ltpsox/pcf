docker_image 'amara/amara-pro' do
  action :pull
  notifies :redploy, 'docker_container[amara-pro]', :immediately
end

docker_container 'amara-pro' do
  action :run
end
