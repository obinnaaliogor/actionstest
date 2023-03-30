#### Terraform workflow with sonarcloud scan for Analysis

sonar.projectKey=obinnaaliogor_actionstest
sonar.organization=obinnaaliogor

# You have to create a file called sonar-project.properties in the root dir of your project and add projectkey and organization name
# show above
# where actionstest is my repo name
# where obinnaliogor is my projectkey and organization name
# NB if you dont save this at your project root directory, you will have this error 

## Reference:
https://docs.sonarcloud.io/getting-started/github/

# ERROR: Error during SonarScanner execution
# ERROR: You must define the following mandatory properties for 'Unknown': sonar.projectKey, sonar.organization

## If your sonarcloud is set at automatic analysis whereas you are running a CI analysis, The scan will fail.
## You will have the following error:

## ERROR: You are running CI analysis while Automatic Analysis is enabled. Please consider disabling one or the other.

## Solution is to go to your sonarcloud account, click on administration and disable automatical analysis
## Reference:
https://sonarcloud.io/project/analysis_method?id=obinnaaliogor_actionstest