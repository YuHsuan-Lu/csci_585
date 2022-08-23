##install.packages("leaflet")

##library("leaflet")

m<-leaflet()

m <- addTiles(m)

## hmm - VB! 
m <- addCircleMarkers(m, lng=-118.29357708815326, lat=34.01985688138196,label="Home", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28908207196147, lat=34.0205650260332,label="Viterbi Ft",     radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28452204562171, lat=34.02069626134655,label="Prentiss Ft",      radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28525531212273, lat=34.020493710534865,label="Trojan Ft",     radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28342489907803, lat=34.020534962617944,label="CCF Ft",     radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28308854656146, lat=34.021583753952484,label="Leavy Lib Pool",     radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28327865284001, lat=34.02216766252496,label="Generations Ft",     radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28875020157386, lat=34.01980265046844,label="Sci and Eng Lib",     radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.286575516796, lat=34.018668956154976,label="H Lib of Phi",     radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28417473579191, lat=34.0189230599306,label="AVC Law Lib",     radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28452204562171, lat=34.02069626134655,label="Doheny Lib",     radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28369381499044, lat=34.021358004415085,label="Lib of INAP",     radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28327638023804, lat=34.021333944791934,label="Leavy Lib",     radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")

m
