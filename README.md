## Fork of php-proxy-app

These are my instructions for configuring php-proxy-app, a Web app built around php-proxy. For more details, see the [Project Homepage](https://www.php-proxy.com/).

### Tested on:
1. MacOS Sierra 10.12.6
2. PHP 5.6.30 (cli)

### Download
 ```bash
 $ ./download_vendor.sh
 ```

### Setup
##### 1) Configure the Server
1.1. Set the app_key on line 7 of `config.php`:
```php
$config['app_key'] = 'mikhail\'s proxy';
```
1.2. (Optional) modify `templates/main.php` for a custom Homepage display

##### 2) Configure your Home Router
This step will allow users on the internet to access your service from the internet by typing in the IP address of your home router into their browser.

2.1. Set up **port-forwarding** on your router. I logged into my Linksys router by typing 192.168.1.1 into my browser, logging in, and navigating to Security > Apps and Gaming > Single Port Forwarding. You may need to look up how to navigate to the port forwarding page of your router.

Once there, set up port-forwarding from `<EXTERNAL_PORT>` to `<LAN_IP_ADDRESS>:<INTERNAL_PORT>`, where `<LAN_IP_ADDRESS>` is the local IP address of the device which will be running the proxy server.

2.2 Finally, find the Wide IP Address of your router at this link. I found mine [here](https://www.whatismypublicip.com/) but you can also find it by simply googling "My public IP Address".

After doing this, users will access your proxy via the url `http://<ROUTER_IP_ADDRESS>:<EXTERNAL_PORT>`

#### Run the Server
```bash
$ php -S <LAN_IP_ADDRESS>:<INTERNAL_PORT>
```
