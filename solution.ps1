# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/invoke-restmethod?view=powershell-7.3#examples
# get data from endpoint
$data_response = Invoke-RestMethod -Uri "https://datausa.io/api/data?drilldowns=State&measures=Population"
# export raw original data to csv file
$data_response.data | Export-Csv -Path .\data.csv -NoTypeInformation
