.class public Lcom/amazon/whisperjoin/common/sharedtypes/utility/DiscoveryController;
.super Ljava/lang/Object;
.source "DiscoveryController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.whisperjoin.common.sharedtypes.utility.DiscoveryController"


# instance fields
.field private final mBleScanDataCoalescer:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$BleScanDataCoalescer;

.field private final mDeviceFilter:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;

.field private final mRadioConfigurations:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/configuration/RadioConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanningMode:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;Ljava/util/Collection;Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$BleScanDataCoalescer;Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;",
            "Ljava/util/Collection<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/configuration/RadioConfiguration;",
            ">;",
            "Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$BleScanDataCoalescer;",
            "Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 27
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 37
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/utility/DiscoveryController;->mDeviceFilter:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/utility/DiscoveryController;->mRadioConfigurations:Ljava/util/Collection;

    .line 39
    iput-object p3, p0, Lcom/amazon/whisperjoin/common/sharedtypes/utility/DiscoveryController;->mBleScanDataCoalescer:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$BleScanDataCoalescer;

    .line 40
    iput-object p4, p0, Lcom/amazon/whisperjoin/common/sharedtypes/utility/DiscoveryController;->mScanningMode:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "scanningMode can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bleScanDataCoalescer can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "radioConfigurations can not be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "device filter can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public startDiscovery()V
    .locals 5

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/utility/DiscoveryController;->mRadioConfigurations:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/RadioConfiguration;

    .line 46
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/RadioConfiguration;->getDiscoveryService()Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/utility/DiscoveryController;->mDeviceFilter:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;

    iget-object v3, p0, Lcom/amazon/whisperjoin/common/sharedtypes/utility/DiscoveryController;->mBleScanDataCoalescer:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$BleScanDataCoalescer;

    iget-object v4, p0, Lcom/amazon/whisperjoin/common/sharedtypes/utility/DiscoveryController;->mScanningMode:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    invoke-interface {v1, v2, v3, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService;->start(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$BleScanDataCoalescer;Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;)V

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "discoveryService should never be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 53
    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/utility/DiscoveryController;->TAG:Ljava/lang/String;

    const-string v2, "Error starting discovery"

    invoke-static {v1, v2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public stopDiscovery()V
    .locals 3

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/utility/DiscoveryController;->mRadioConfigurations:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/RadioConfiguration;

    .line 60
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/RadioConfiguration;->getDiscoveryService()Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    invoke-interface {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService;->stop()V

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "discoveryService should never be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 67
    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/utility/DiscoveryController;->TAG:Ljava/lang/String;

    const-string v2, "Error stopping discovery"

    invoke-static {v1, v2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method
