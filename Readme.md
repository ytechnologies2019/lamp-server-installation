##Installation Guide

#grant the permission
    chmod +x install-lamp.sh
    chmod +x install-phpAdmin.sh 
    
1st #Execute the Script
    ./install-lamp.sh 
    
    #MariaDB Setup 
    
        Enter current password for root (enter for none):  - Left Blank
        Switch to unix_socket authentication : n
        Change the root password? [Y/n] : Y  (Setup new password)
        Remove the anonymous users : Y 
        Disallow root login remotely: n
        Remove the test database and access to it? [Y/n] : Y 
        Reload privilege tables now? [Y/n] : Y 
        
2nd ##Install the phpMyAdmin
        ./install-phpMyAdmin.sh 

3rd ##Browse the following 3 links
    - <ip address> 
    - <ip address/phpinfo.php>
    - <ip address/phpMyAdmin>
        
