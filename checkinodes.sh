#!/bin/bash
#########################
#copyright@nu11secur1ty#
#########################
homedir=/home/
etcdir=/etc/
optdir=/opt/
rootdir=/root/
vardir=/var/log/messages

# report
report=`mkdir /home/nu11secur1ty/Desktop/WORK/checkinode/reportprogram/`
outreport=/home/nu11secur1ty/Desktop/WORK/checkinode/reportprogram/

# export
reporthomedir=/home/nu11secur1ty/Desktop/WORK/checkinode/reportprogram/homereport.txt
reportetcdir=/home/nu11secur1ty/Desktop/WORK/checkinode/reportprogram/etcreport.txt
reportoptdir=/home/nu11secur1ty/Desktop/WORK/checkinode/reportprogram/optreport.txt
reportrootdir=/home/nu11secur1ty/Desktop/WORK/checkinode/reportprogram/rootreport.txt
reportvardir=/home/nu11secur1ty/Desktop/WORK/checkinode/reportprogram/messagesreport.txt

   echo "Welcome to checkinode directory, press Enter to continue..."
read

# check
   echo "Check.../home/"
stat $homedir > $reporthomedir | sleep 1 
   echo "Check.../etc/"
stat $etcdir > $reportetcdir | sleep 1
   echo "Check.../opt/"
stat $optdir > $reportoptdir | sleep 1
   echo "Check.../root/"
stat $rootdir > $reportrootdir | sleep 1
   echo "Check.../var/"
cat $vardir > $reportvardir | sleep 1
   echo "After when everything look good, you have to delete or move "report program" file"
   echo "Press ENTER to delete report or Ctrl+C to delete manualy"
read
   chmod 777 $outreport -R
   rm -rf $outreport 
   echo "Have nice day" 

