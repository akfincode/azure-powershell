# ./CreateCred
# Parameters - fill these in before running the script!
# =====================================================

$path = "/<folder>/azure_cred.json" # credential file

Add-AzureRmAccount 

Save-AzureRmContext -Path $path -Force 