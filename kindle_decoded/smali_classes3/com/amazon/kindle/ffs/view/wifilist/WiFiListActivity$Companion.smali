.class public final Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity$Companion;
.super Ljava/lang/Object;
.source "WiFiListActivity.kt"

# interfaces
.implements Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntentWithArgumentsForConnecting(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectingTo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    sget-object p1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;->CONNECTING:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WiFiListActivity:statusKey"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "WiFiListActivity:viewModel"

    .line 65
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "WiFiListActivity:connectingTo"

    .line 66
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "WiFiListActivity:saveToLockerChecked"

    .line 67
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public getIntentWithArgumentsForFixup(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;)Landroid/content/Intent;
    .locals 2

    const-string v0, "viewModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    sget-object p1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;->ERROR:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WiFiListActivity:statusKey"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "WiFiListActivity:viewModel"

    .line 75
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public getIntentWithArgumentsForNetworkSelection(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;)Landroid/content/Intent;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    sget-object p1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;->NETWORK_SELECTION:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WiFiListActivity:statusKey"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "WiFiListActivity:viewModel"

    .line 56
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public getIntentWithArgumentsForPasswordInput(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;)Landroid/content/Intent;
    .locals 2

    const-string v0, "viewModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    sget-object p1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;->PASSWORD_INPUT:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WiFiListActivity:statusKey"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "WiFiListActivity:viewModel"

    .line 83
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public getIntentWithArgumentsForScanning(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    sget-object p1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;->SCANNING:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListStatus;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WiFiListActivity:statusKey"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
