docker_image 'uploader' do
  action :pull
  notifies :redeploy, 'docker_container[uploader]', :immediately
end

docker_container 'uploader' do
  action :run
end
