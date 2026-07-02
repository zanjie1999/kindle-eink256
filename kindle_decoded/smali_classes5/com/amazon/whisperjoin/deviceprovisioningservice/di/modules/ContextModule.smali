.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;
.super Ljava/lang/Object;
.source "ContextModule.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method providesBluetoothSupportProvider(Landroid/content/Context;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider;
    .locals 1

    .line 49
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider$DefaultBluetoothSupportProvider;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider$DefaultBluetoothSupportProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method providesContext()Landroid/content/Context;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method providesGson()Lcom/google/gson/Gson;
    .locals 1

    .line 61
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    return-object v0
.end method

.method providesJobScheduler(Landroid/content/Context;)Landroid/app/job/JobScheduler;
    .locals 1

    const-string v0, "jobscheduler"

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    return-object p1
.end method

.method providesSharedPreferencesProvider(Landroid/content/Context;)Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;
    .locals 1

    .line 43
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method providesWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;
    .locals 1

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    return-object p1
.end method
