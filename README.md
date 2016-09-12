<div>
    <div>
        <div>
            <p>
                <h1>CS-Alert (CMX-Spark Alert)</h1>
            </p>
            <p>
                This is an application designed to take input from CMX and send triggered alerts to Spark.<br></br>
            </p>
            <p>
                <b>The Challenge</b> - We need the ability to use the location analytics provided by CMX to analyze retail floor congestion and automatically alert
                employees to help customers.
            </p>
            <p>
                <b>The Solution</b> - Create an application that will query CMX for the current connected devices count (how many customers are in that area of the
                store) and send an alert to the floor manager's spark room when the store became too congested.
            </p>
            <p>
                Our goal was to combine two Cisco products via APIs and scripting to automate a new capability for customers.
            </p>
            <p>
                <b>Contributors</b> - Paul Lewis, Bryan Adams<br></br>
              
            </p>
            <p>
                <h2>This repo includes the following resources:</h2>
            </p>
            <p>
                <h3>Repo Information</h3>
            </p>
            <ul type="disc">
                <li>
                    README.md
                </li>
                <ul type="circle">
                    <li>
                        This document
                    </li>
                </ul>
                <li>
                    .gitignore
                </li>
                <ul type="circle">
                    <li>
                        Standard gitignore file to prevent commiting unneeded or security risk files
                    </li>
                </ul>
            </ul>
            <p>
                <h3>CICD Build Configuration</h3>
            </p>
            <ul type="disc">
                <li>
                    .drone.yml
                </li>
                <ul type="circle">
                    <li>
                        CICD Build instructions for Drone Server
                    </li>
                </ul>
                <li>
                    drone_secrets_sample.yml
                </li>
                <ul type="circle">
                    <li>
                        template for the secrets file that will be used to encrypt credentials
                    </li>
                </ul>
                <li>
                    Dockerfile
                </li>
                <ul type="circle">
                    <li>
                        Docker build file for applicaiton container
                    </li>
                </ul>
                <li>
                    requirements.txt
                </li>
                <ul type="circle">
                    <li>
                        pip installation requirements
                    </li>
                </ul>
            </ul>
            <p>
                <h3>Application Files</h3>
            </p>
            <ul type="disc">
                <li>
                    appstart.py
                </li>
                <ul type="circle">
                    <li>
                        This kicks off the application. It kicks off the CMX API request, writes the response to a text file and parses that file for the
                        current devices count. It will then ask the user for input, and compare the device count to the threshold. It will continuously ping
                        CMX and kick off the spark scripts if the threshold is crossed.
                    </li>
                </ul>
                <li>
                    variables.py
                </li>
                <ul type="circle">
                    <li>
                        This is the script that will ask the user for their spark token, the floor manager's email, and the customer capacity (threshold) of
                        the store floor.
                    </li>
                </ul>
                <li>
                    CMXRequest.sh
                </li>
                <ul type="circle">
                    <li>
                        API request to the MSE for the current device count.
                    </li>
                </ul>
                <li>
                    CMXResponse.txt
                </li>
                <ul type="circle">
                    <li>
                        API response from the MSE of the current device count.
                    </li>
                </ul>
                <li>
                    execute.py
                </li>
                <ul type="circle">
                    <li>
                        Python file with a function that kicks off the spark scripts in order.
                    </li>
                </ul>
                <li>
                    sparkRoom.py
                </li>
                <ul type="circle">
                    <li>
                        Creates a Spark room.
                    </li>
                </ul>
                <li>
                    sparkMember.py
                </li>
                <ul type="circle">
                    <li>
                        Adds the floor manager to the Spark room.
                    </li>
                </ul>
                <li>
                    sparkMessage.py
                </li>
                <ul type="circle">
                    <li>
                        Sends a message to the Spark room.
                    </li>
                </ul>
            </ul>
        </div>
    </div>
</div>
