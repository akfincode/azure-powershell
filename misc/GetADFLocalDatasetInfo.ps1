# ./GetADFLocalDatasetInfo
# Parameters - fill these in before running the script!
# =====================================================

$sb = "<subscriptionId>" #subscription
$cred_file = "/<folder>/azure_cred.json"
$ds_folder = "/<folder>/Datasets/" #Dataset root folder

# Edit filter condition
# Follow Dataset file naming convention to extra useful meta data by applying 
# filters for ex. *_sqldb_* to extract SQLDB table names
$filter_cond = "<filter_pattern>" 

#Auto Login
Select-AzureRmProfile -Path $cred_file

Set-AzureRMContext -SubscriptionId $sb

foreach ($file in Get-ChildItem $ds_folder -Recurse -Filter $filter_cond)
{
	Write-Output $file.BaseName
}
