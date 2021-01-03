#!/bin/sh
echo "Enter the number of users: "  
read userCount 
echo "Enter the Ramp up time: " 
read rampUpTime
echo "Enter the loop count: " 
read loopCount
echo "Starting Performance testing for SSO"
jmeter -n -t "Script/SSOTest.jmx" -l "Report/ExecutionLog.jtl" -JuserCount=$userCount -JrampUpTime=$rampUpTime -JloopCount=$loopCount
timestamp=$(date +%s)
jmeter -g "Report/ExecutionLog.jtl" -o "Report/$timestamp"