# ./GetADFDatasetInfo
# Parameters - fill these in before running the script!
# =====================================================

$rg = "<resourceGroupName>" #Resource Group Name
$df = "<datafactoryName>" #Data Factory Name
$sb = "<subscriptionId>" #subscription
$cred_file = "/<folder>/azure_cred.json"

# Edit filter condition
# Follow Dataset naming convention to extra useful meta data by applying filters

$filter_cond = "<filter_pattern>" 

#Auto Login
Select-AzureRmProfile -Path $cred_file

Set-AzureRMContext -SubscriptionId $sb

Get-AzureRmDataFactoryDataset -ResourceGroupName $rg -DataFactoryName $df | Where {$_.DatasetName -like '<filter_pattern>'} | Write-Output $_.DatasetName