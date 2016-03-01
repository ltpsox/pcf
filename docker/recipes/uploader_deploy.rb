docker_image 'amara/uploader' do
  action :pull
  notifies :redeploy, 'docker_container[uploader]', :immediately
end

docker_container 'uploader' do
  action :run
end
