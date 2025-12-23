Device tree for the Samsung Galaxy A11/M11
=================================================

Status: Booted (Build User variant is not booting)

  ## Device Specifications
 
  Basic | Spec Sheet
 -------:|:-------------------------
 SoC | Qualcomm SDM450 Snapdragon 450
 CPU | Octa core (1.8 GHz)
 GPU | Adreno 506
 Memory | 2GB / 4 GB RAM
 Shipped Android Version | 10.0
 Storage | 32GB / 64GB
 MicroSD | Up to 512 GB (dedicated slot)
 Battery | Non-removable Li-Ion 5000 mAh battery
 Dimensions | 161.4 x 76.3 x 9 mm (6.35 x 3.00 x 0.35 in)
 Display | 	720 x 1560 pixels, 19.5:9 ratio (~268 ppi density)
 Rear Camera (Main) | 13 MP, f/1.8, 27mm (wide), 1/3.1", 1.12µm, PDAF
 Rear Camera (Ultra-wide) | 5 MP, f/2.2, 14mm (ultra-wide), 115°
 Rear Camera (Depth) | 2 MP, f/2.4 (depth)
 Front Camera | 8 MP, f/2.0, 1/4.0", 1.12µm
 
**ARM64 vendor was originally created by smiley9000**
NOTE: I used the LineageOS Revived fork, if you are going to build it check if ro.zygote is 64_32 in out/target/product/m11q/vendor/default.prop if it is 32 put 64_32 do this before it builds the vendor image

  In GSI these bugs are not happening
|         Bugs - In ROM         |
|------------------------------:|
|Call sound                     |
|BT Call Sound                  |
|Face Unlock                    |
|Wi-Fi disconnects on screen off|

 ## Device Picture
 
 ![Samsung Galaxy M11](https://fdn2.gsmarena.com/vv/pics/samsung/samsung-galaxy-m11-sm-m115-1.jpg)