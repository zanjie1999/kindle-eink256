.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;
.super Ljava/lang/Object;
.source "UtilModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method providesClock()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;
    .locals 1

    .line 22
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock$SystemClockImpl;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock$SystemClockImpl;-><init>()V

    return-object v0
.end method

.method providesCurrentWifiNetworkProvider(Landroid/net/wifi/WifiManager;)Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;
    .locals 1

    .line 42
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;-><init>(Landroid/net/wifi/WifiManager;)V

    return-object v0
.end method

.method providesDevicePowerStatsProvider(Landroid/content/Context;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;
    .locals 1

    .line 32
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method providesJobInfoProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;
    .locals 1

    .line 27
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;-><init>()V

    return-object v0
.end method

.method providesLocationPermissionsHelper(Landroid/content/Context;)Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;
    .locals 1

    .line 37
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
