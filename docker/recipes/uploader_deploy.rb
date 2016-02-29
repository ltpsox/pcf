docker_image 'amara/uploader' do
  action :pull
  notifies :redploy, 'docker_container[uploader]', :immediately
end

docker_container 'uploader' do
  action :run
end
