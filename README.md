# Terzo homework per il corso di Laboratorio Ciberfisico

## Struttura
La cartella ORB_SLAM2 contiene la versione modificata dell'omonima libreria
La cartella Pangolin è stata aggiunta poiché è l'unica dipendenza non 
installabile mediante apt.
La cartella cluster contiene il file c++ che effettua il clustering ed il 
relativo CMakeLists.txt.

## Compilazione
Per compilare il progetto è sufficiente (dopo aver installato tutte le 
dipendenze necessarie) eseguire il file build.sh

## Esecuzione
per eseguire il progetto e generare la point cloud come richiesto è 
sufficiente lanciare il file run.sh, il quale aprirà 3 terminali:
* roscore
* visualizzatore
* rosbag 

Per avviare il programma premere la barra spaziatrice mentre si ha il focus
sul terminale che esegue la rosbag.
Una volta terminata la rosbag sarà necessario interrempere il terminale 
visualizzatore premendo ctrl-c, così facendo verrà salvata la point cloud.

N.B. Il file run.sh crea una cartella run dove verranno salvati tutti i 
file generati durante l'esecuzione.

## Screenshots
La cartella screenshots contiene tutti gli screenshot effettuati durante il
lavoro.

