# air-net-led
**It's simple..**

If you have **Airplane LED** on your laptop then you wont need to run pings and stuff to see if you have Internet access, because:

Airplane LED **ON** = No Internet Access

Airplane LED **OFF** = Internet Access

`----------------------------------------------------------------`

**Install:**

`$ git clone https://github.com/alirezarpi/air-net-led.git`

`$ cd air-net-led/`

`$ chmod +x air-net-led.sh && sudo cp air-net-led.sh /usr/bin/`

Remember to run it as **root user** ( `$ sudo air-net-led.sh &` )

Also you can use more flexible script that you can specify **Target** and **Request Count** 
with it to monitor any host.

`$ chmod +x air-net-led-flex.sh && sudo cp air-net-led-flex.sh /usr/bin/`

Remember to use it as **root user** ( `$ sudo air-net-led-flex.sh` ) too.

`----------------------------------------------------------------`

You can do 

`$ sudo mv air-net-led.service /etc/systemd/system/ && sudo systemctl enable air-net-led.service`

to run at boot time.

`----------------------------------------------------------------`

NOTE: Tested on Asus Laptops -Debian Base- 


Hope you enjoy
