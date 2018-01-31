# air-net-led
**It's simple..**

Airplane LED **ON** = No Internet Access

Airplane LED **OFF** = Internet Access

`----------------------------------------------------------------`

**Install:**

`$ git clone https://github.com/alirezarpi/air-net-led.git`

`$ cd air-net-led/`

`$ chmod +x air-net-led.sh && sudo cp air-net-led.sh /usr/bin/`


Remember to run it as **root user** (`$ sudo air-net-led.sh &` )

`----------------------------------------------------------------`

You can do 

`$ sudo mv air-net-led.service /etc/systemd/system/ && sudo systemctl enable air-net-led.service`

to run at boot time.

`----------------------------------------------------------------`

NOTE: Tested on Asus Laptops -Ubuntu- 


Hope you enjoy
