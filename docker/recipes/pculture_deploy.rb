docker_image 'amara/pculture.org' do
  action :pull
  notifies :redploy, 'docker_container[pculture.org]', :immediately
end

docker_container 'pculture.org' do
  action :run
end
