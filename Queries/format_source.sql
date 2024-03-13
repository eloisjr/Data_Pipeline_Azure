-- Use the same file format as used for creating the External Tables during the LOAD step.
IF NOT EXISTS (SELECT * FROM sys.external_file_formats WHERE name = 'SynapseDelimitedTextFormat') 
    CREATE EXTERNAL FILE FORMAT [SynapseDelimitedTextFormat] 
    WITH ( FORMAT_TYPE = DELIMITEDTEXT ,
           FORMAT_OPTIONS (
             FIELD_TERMINATOR = ',',
             USE_TYPE_DEFAULT = FALSE
            ))
GO

IF NOT EXISTS (SELECT * FROM sys.external_data_sources WHERE name = 'Containers_adlsnycpayrolleloisar_dfs_core_windows_net') 
    CREATE EXTERNAL DATA SOURCE [Containers_adlsnycpayrolleloisar_dfs_core_windows_net] 
    WITH (
        LOCATION = 'abfss://Containers@adlsnycpayrolleloisar.dfs.core.windows.net' 
    )
GO