#This Powershell azure cli script deletes all resources in your subscription
#Make sure you are connected to azure cli.

$name = az group list --query [].name -o tsv 
foreach($object in $name){
    az group delete --resource-group $object -y --no-wait 
}