CREATE EXTERNAL TABLE [dbo].[NYC_Payroll_TITLE_MD](
    [TitleCode] [varchar](10) NULL,
    [TitleDescription] [varchar](100) NULL
)
WITH (
		LOCATION = 'payroll_title_md.csv',
      DATA_SOURCE = [Containers_adlsnycpayrolleloisar_dfs_core_windows_net],
      FILE_FORMAT = [SynapseDelimitedTextFormat]
)
GO