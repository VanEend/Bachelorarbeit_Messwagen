# Bachelorarbeit_Messwagen

This GitHub repository contains files used to create plots of:
- Bias-Correction
- Climate at the MeteoSwiss station *Zollikofen* at the date of measurement
- Deviation from Sensor_3 of both relative air humidity and temperature along the long route
- Height profile along the long and short route
- Pathways of both relative air humidity and temperature along the long route

## Folders

This repository contains five folders: *Functions*, *Images*, *Metadaten*, *data*, *vingettes* and *vingettes_julia*. In the following paragraphs every folder is described more closely.

### Functions

This folder contains every function used to create R plots. As per 26.05.2025 there is only one function stored inside this folder. 
The function *wind_rose_diagram* is used to create a wind rose diagram from the observation period at the MeteoSwiss station *Zollikofen*

### Images

Every R graphic created is saved in this folder. This shall ease the access to every graphic

### Metadaten

This folder contains meta data of:
- Messwagen measurements
- Bernometer measurement values from 20.09.2024 to 15.12.2024 from the stations *"Vordere Länggasse"*, *"Hintere Länggasse"* and *"VonRoll"*
- Measurements from the MeteoSwiss station at Zollikofen from 11.12.2024 to 13.12.2024.

*Note:*
Both the MeteoSwiss station at Zollikofen and the Bernometer measurement stations are measured in a ten-minute interval.
For the MeteoSwiss station at Zollikofen only values between 10:10 and 12:20 o'clock 12.12.2024 were considered for the analysis due to the measurement period.

### Data

This folder contains every dataset needed to create all R plots. These datasets are the Metadata used for the Bachelor thesis.
In the following paragraphs, every dataset is described briefly. 

#### Bias_CSV

This dataset contains measurement values of the Messwagen and the reference stations *"Vordere_Länggasse"* (VL), *"Hintere_Länggasse"* (HL) and *"VonRoll"* (VR) from the Berner Messnetz. Measurements of both Messwagen and reference stations are performed at three meters above ground at the same moment. In brackets (column: *Messort*) the location (HL, VL, VR) as well as the time is denoted.
*Note:*
  - T stands for temperature (Temperatur); values in °C
  - LF stands for relative air humidity (Luftfeuchtigkeit), values in %
 
#### Distanz_&_Hohe_GR

This dataset contains measurement values of the Messwagen along the long route. The dataset contains following parameters:
- Messung: The number of the measurement
- Jahr, Monat, Tag: Year, month and day of measurement (GPS-device)
- Longitude & Latitude
- Height in meters above sea level
- Stunde, Minute, Sekunde: Hour, minute, second of measurement (Sensor)
- Sensor1_T, Sensor2_T; Sensor3_T, Sensor4_T: Temperature values of sensors in °C
- Sensor1_LF, Sensor2_LF, Sensor3_LF, Sensor4_LF: Relative air humidity of sensors in %
- Distanz_Nachbarpunkt: Distance to the point neighbouring point in meters (Determined by GIS)
- Distanz_Runsum: Distance to measurement start in meters (Determined by GIS)
- Height_GIS1: Height above sea level in meters (Determined by GIS and Swissalti dataset)
- LCZ: Local climate zone of each measurement value (1 = urban, 2 = forest)

#### Distanz_&_Hohe_KR

This dataset contains measurement values of the Messwagen along the short route. The dataset contains following parameters:
- Messung: The number of the measurement
- Jahr, Monat, Tag: Year, month and day of measurement (GPS-device)
- Longitude & Latitude
- Height in meters above sea level
- Stunde, Minute, Sekunde: Hour, minute, second of measurement (Sensor)
- Sensor1_T, Sensor2_T; Sensor3_T, Sensor4_T: Temperature values of sensors in °C
- Sensor1_LF, Sensor2_LF, Sensor3_LF, Sensor4_LF: Relative air humidity of sensors in %
- Distanz_Nachbarpunkt: Distance to the point neighbouring point in meters (Determined by GIS)
- Distanz_Runsum: Distance to measurement start in meters (Determined by GIS)
- Height_GIS1: Height above sea level in meters (Determined by GIS and Swisslti dataset)
- LCZ: Local climate zone of each measurement value (1 = urban, 2 = forest)

#### Legende

This dataset contains a legend to the Zollikofen station dataset (Here: *Messwerte*)

#### Messwerte

This dataset contains measurement values of the MeteoSwiss station Zollikofen.

### vingettes

This file contains following R Markdown files:
- Bias_Correction; used to make graphics for the bias correction
- Dev_between_sensors; used to create graphics for the deviation to Sensor_3 from the long route
- Height_Profile; used to create a height profile along the short and the long route
- Pathways; used to create a temperature and relative air humidity pathway along the long route
- Reference_Station_Zollikofen; used to create graphs to visualise climatic conditions during measurement period at the reference station Zollikofen from MeteoSwiss
- Statistics; used to determine statistics of the long route

### vingettes_julia

This file contains dataset needed and the file to create the height profile in Julia.
- The dataset *Distanz_&_Hohe_GR_2* contains the same information as the dataset *Distanz_&_Hohe_GR*
- The file *Height_Profile_Julia* generates the height profile along the long route of temperature and air humidity
- Inside the folder the images are saved separately as well

**Status: 26.05.2025**
