wordpress_nginx_site 'wordpress.cloudgeni.us' do
  host 'wordpress.cloudgeni.us'
  root '/var/www/wordpress.cloudgeni.us'
  notifies :reload, 'service[nginx]'
end
