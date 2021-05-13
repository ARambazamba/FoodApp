rnd=030
grp=foodapp-$rnd
loc=westeurope
appPlan=foodplan-$rnd
app=foodapi-$rnd

az group create -n $grp -l $loc

az appservice plan create -n $appPlan -g $grp --sku FREE 

az webapp create -n $app -g $grp --plan $appPlan --runtime "DOTNET|5.0"

echo "FoodApi Url: http://$app.azurewebsites.net"