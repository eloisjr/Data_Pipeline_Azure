# Data Integration Pipelines for NYC Payroll Data Analytics

# Project

This project called "Data Integration Pipelines for NYC Payroll Data Analytics" is from the Udacity course "Data Engineering with Microsoft Azure".

# Project Overview

The City of New York would like to develop a Data Analytics platform on Azure Synapse Analytics to accomplish two primary objectives:

1. Analyze how the City's financial resources are allocated and how much of the City's budget is being devoted to overtime.
2. Make the data available to the interested public to show how the City’s budget is being spent on salary and overtime pay for all municipal employees.

You have been hired as a Data Engineer to create high-quality data pipelines that are dynamic, can be automated, and monitored for efficient operation. The project team also includes the city’s quality assurance experts who will test the pipelines to find any errors and improve overall data quality.

The source data resides in Azure Data Lake and needs to be processed in a NYC data warehouse. The source datasets consist of CSV files with Employee master data and monthly payroll data entered by various City agencies.
![image](https://github.com/eloisjr/Data_Pipeline_Azure/assets/81710422/105f2a8b-3999-4373-a9de-48f02c74af89)

At a high level your pipeline will look like the below:

![image](https://github.com/eloisjr/Data_Pipeline_Azure/assets/81710422/0147f556-daf1-47c4-81d1-62e1eca34289)

# Project Environment

For this project, you'll do your work in the Azure Portal, using several Azure resources including:
- Azure Data Lake Gen2 
- Azure SQL DB
- Azure Data Factory
- Azure Synapse Analytics

# Step 1: Prepare the Data Infrastructure
Setup Data and Resources in Azure

 1.Create the data lake and upload data

Log into your Azure account and Create an Azure Data Lake Storage Gen2 (storage account) and associated storage container resource named adlsnycpayroll-yourfirstname-lastintial.
In the Azure Data Lake Gen2 creation flow, go to Advanced tab and ensure below options are checked:

- Require secure transfer for REST API operations
- Allow enabling anonymous access on individual containers
- Enable storage account key access
- Default to Microsoft Entra authorization in the Azure portal
- Enable hierarchical namespace

Create three directories in this storage container named:
- dirpayrollfiles
- dirhistoryfiles
- dirstaging

**dirstaging** will be used by the pipelines we will create as part of the project to store staging data for integration with Azure Synapse. This will be discussed in further pages

Upload these files from the project data(opens in a new tab) to the dirpayrollfiles folder:

- EmpMaster.csv
- AgencyMaster.csv
- TitleMaster.csv
- nycpayroll_2021.csv

Upload this file (historical data) from the project data(opens in a new tab) to the dirhistoryfiles folder
- nycpayroll_2020.csv

2. Create an Azure Data Factory Resource

3. Create a SQL Database

In the Azure portal, create a SQL Database resource named db_nycpayroll.

In the creation steps, you will be required to create a SQL server, create a server with Service tier: Basic (For less demanding workloads).

![image](https://github.com/eloisjr/Data_Pipeline_Azure/assets/81710422/638b303e-ea98-4640-868d-a60d044a1358)

In Networking tab, allow both of the below options:

- Allow Azure services and resources to access this server
- Add current client IP address

  4. Create a Synapse Analytics workspace
  5. Create summary data external table in Synapse Analytics workspace

Define the file format, if not already, for reading/saving the data from/to a comma delimited file in blob storage.
![pipeline](https://github.com/eloisjr/Data_Pipeline_Azure/assets/81710422/dfc2e06c-c8f9-4b71-816c-379f354768b9)


Define the data source to persist the results.Use the blob storage account name as applicable to you.

Create external table that references the dirstaging directory of DataLake Gen2 storage for staging payroll summary data. (Pipeline for this will be created in later section).
![pipeline2](https://github.com/eloisjr/Data_Pipeline_Azure/assets/81710422/898442a7-b7ef-4356-a925-eaa3aca1663f)

In the code snippet above, the data will be stored in the ‘/’ directory in the blob storage in dirstaging (this was configured when creating datasource). You can change the location as you desire. Also, change the DATA_SOURCE value, as applicable to you. Note that, mydls20230413 is the Data Lake Gen 2 storage name, and mydlsfs20230413 is the name of the file system (container).

6. Create master data tables and payroll transaction tables in SQL DB
![image](https://github.com/eloisjr/Data_Pipeline_Azure/assets/81710422/175d8636-7d24-4636-8643-5b896b5bc418)





