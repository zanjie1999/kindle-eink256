.class public interface abstract Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;
.super Ljava/lang/Object;
.source "WiFiListActivity.kt"


# virtual methods
.method public abstract getIntentWithArgumentsForConnecting(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;Ljava/lang/String;Z)Landroid/content/Intent;
.end method

.method public abstract getIntentWithArgumentsForFixup(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;)Landroid/content/Intent;
.end method

.method public abstract getIntentWithArgumentsForNetworkSelection(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;)Landroid/content/Intent;
.end method

.method public abstract getIntentWithArgumentsForPasswordInput(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;)Landroid/content/Intent;
.end method

.method public abstract getIntentWithArgumentsForScanning(Landroid/content/Context;)Landroid/content/Intent;
.end method
