# Terraform workflow with sonarcloud scan for Analysis

# sonar.projectKey=obinnaaliogor_actionstest
# sonar.organization=obinnaaliogor

### You have to create a file called sonar-project.properties in the root dir of your project and add projectkey and organization name
### Reference:
https://docs.sonarcloud.io/getting-started/github/
### as shown above
### where actionstest is my repo name
### where obinnaliogor is my projectkey and organization name (you will receive this once you signup or integrate your gitHub with sonarcloud)
### Reference:
https://github.com/marketplace/actions/sonarcloud-scan

https://www.sonarsource.com/products/sonarcloud/
# NB if you dont create sonar-project.properties file at your project root directory and add the orgname and projectkey, you will have the below error 

## ERROR: Error during SonarScanner execution.
## ERROR: You must define the following mandatory properties for 'Unknown': sonar.projectKey, sonar.organization

# If your sonarcloud is set at automatic analysis whereas you are running a CI analysis, The scan will fail.
## You will have the following error:

## ERROR: You are running CI analysis while Automatic Analysis is enabled. Please consider disabling one or the other.

### Solution is to go to your sonarcloud account, click on administration and disable automatical analysis
### Reference:
https://sonarcloud.io/project/analysis_method?id=obinnaaliogor_actionstest