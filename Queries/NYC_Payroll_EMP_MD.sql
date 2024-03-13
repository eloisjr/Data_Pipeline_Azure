CREATE EXTERNAL TABLE [dbo].[NYC_Payroll_EMP_MD](
    [EmployeeID] [varchar](10) NULL,
    [LastName] [varchar](20) NULL,
    [FirstName] [varchar](20) NULL
)
WITH (
		LOCATION = 'payroll_emp_md.csv',
      DATA_SOURCE = [Containers_adlsnycpayrolleloisar_dfs_core_windows_net],
      FILE_FORMAT = [SynapseDelimitedTextFormat]
)
GO