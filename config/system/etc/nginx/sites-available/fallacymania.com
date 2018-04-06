server {
        listen 80 default_server;
        listen [::]:80 default_server ipv6only=on;

        server_name fallacymania.com www.fallacymania.com  "";
        passenger_enabled on;
        rails_env    production;
        root         /var/www/fallacymania.com/current/public;

        # redirect server error pages to the static page /50x.html
        error_page   500 502 503 504  /50x.html;
        location = /50x.html {
            root   html;
        }
        location /blog {
                proxy_pass https://fallacymania.github.io;
        }
}
