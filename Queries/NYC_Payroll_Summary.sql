CREATE EXTERNAL TABLE [dbo].[NYC_Payroll_Summary](
[FiscalYear] [int] NULL,
[AgencyName] [varchar](50) NULL,
[TotalPaid] [float] NULL
)
WITH (
LOCATION = '/',
DATA_SOURCE = [Containers_adlsnycpayrolleloisar_dfs_core_windows_net],
FILE_FORMAT = [SynapseDelimitedTextFormat]
)
GO