wordpress_nginx_site 'be.a.cloudgeni.us' do
  host 'be.a.cloudgeni.us'
  root '/var/www/be.a.cloudgeni.us'
  notifies :reload, 'service[nginx]'
end
