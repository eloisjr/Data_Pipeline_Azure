CREATE EXTERNAL TABLE [dbo].[NYC_Payroll_AGENCY_MD](
    [AgencyID] [varchar](10) NULL,
    [AgencyName] [varchar](50) NULL
)
WITH (
		LOCATION = 'payroll_agency_md.csv',
      DATA_SOURCE = [Containers_adlsnycpayrolleloisar_dfs_core_windows_net],
      FILE_FORMAT = [SynapseDelimitedTextFormat]
)
GO