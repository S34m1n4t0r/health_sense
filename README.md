## Description
This repo hosts the designfiles, sourcecode and documentation for the HealthSense Sensors. 
The results of the prototype are located in prototyping.

# Firmware
The firmware hexfile can be generated using the arduino ide, choose the Nano Board.
Flash the firmware via ISP connector J1.

# Folderstructure:    
```
  |-- arduino       # Contains arduino firmware project
  |-- mechanical    # Contains CAD planning
  |-- doku          # schematic export and bill of materials
	|-- img			      # Images for Readme
  |-- pcb
    |--calc         # simulations and calculations
    |-- HealthSense               # KiCad Project 
       |-- 00_Library             # KiCad Library Files
          |-- HealthSense.pretty  # KiCad Footprint library
```
# Revisions
## Prototyping
Breadboard setup created to verify the correct functionallity of all included sensors.
![Bench Test](img/Prototype.jpg)
## Revision 1.0
Two prototypes are manufactured and assembled by hand as a final POC. The uC is loaded with the arduino-bootloader.
![Bench Test](img/Rev_1.0.jpg)
## Revision 1.1
Five prototypes are manufactured ans assembled. Enclosure holes are milled with CNC.
![Bench Test](img/Rev_1.1.jpg)
### Known Issues
* Enable transistor for SIM800L not working
* SIM800L as solder-on pcb not optimal. 2/5 modules hat to be replaced.
* Charging current of 100mA could be increased
* Temperature Sensor of lipo not connected to charger IC

