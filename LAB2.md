# Laboratorio 2  

## PREGUNTA 1 

### Academic  
#### Power Report 
![ac_pr](https://user-images.githubusercontent.com/73077727/235194893-b30bb58e-56f5-4289-a2e3-6f4b91f37699.PNG)


### Industry
#### Power Report
![inds_pw (1)](https://user-images.githubusercontent.com/73077727/235195361-21f17cee-b9b5-4ce8-a6ce-561fc7db39a0.PNG)

### Differences
Vemos que el Industry Flip Flop posee señales, inputs/outputs y lógica, mientras que el academy, no. Podemos determinar que esto es concluyente para un mayor total on-power chip del industry (0.907W) y un menos consumo por parte del academy (0.068W) 

## PREGUNTA 2  
Comprobamos que funciona! 


## Esquemático FSM
![IMG_20230428_101730_edit_47008701345430](https://user-images.githubusercontent.com/73077727/235195063-952136d3-b128-489d-935b-d9688be2661a.jpg)
![IMG_20230428_101720_edit_46989536504808](https://user-images.githubusercontent.com/73077727/235195067-1447aa46-17ce-40d7-8f0d-37ac4e04d18f.jpg)

### Desing , Código VerilogSimulación y Sintesis  
![image (2)](https://user-images.githubusercontent.com/73077727/235195999-33a5be84-385f-463d-8d7e-6bd098a090f0.png)

![image (1)](https://user-images.githubusercontent.com/73077727/235196017-f277431f-bc09-4cfb-bfcd-6c1be6675214.png)

![image](https://user-images.githubusercontent.com/73077727/235196026-11c7e100-b3fa-43d1-ac10-3f67c4873d1b.png)

### Contrastes
 
 ```
 ## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
set_property -dict { PACKAGE_PIN W5   IOSTANDARD LVCMOS33 } [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

## LEDs
set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports {La}]
set_property -dict { PACKAGE_PIN E19   IOSTANDARD LVCMOS33 } [get_ports {Lb}]
set_property -dict { PACKAGE_PIN U19   IOSTANDARD LVCMOS33 } [get_ports {Lc}]
set_property -dict { PACKAGE_PIN V19   IOSTANDARD LVCMOS33 } [get_ports {Ra}]
set_property -dict { PACKAGE_PIN W18   IOSTANDARD LVCMOS33 } [get_ports {Rb}]
set_property -dict { PACKAGE_PIN U15   IOSTANDARD LVCMOS33 } [get_ports {Rc}]

##Buttons
set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports reset]
#set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports btnU]
set_property -dict { PACKAGE_PIN W19   IOSTANDARD LVCMOS33 } [get_ports L]
set_property -dict { PACKAGE_PIN T17   IOSTANDARD LVCMOS33 } [get_ports R]
#set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports btnD]

## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

## SPI configuration mode options for QSPI boot, can be used for all designs
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
 ```
