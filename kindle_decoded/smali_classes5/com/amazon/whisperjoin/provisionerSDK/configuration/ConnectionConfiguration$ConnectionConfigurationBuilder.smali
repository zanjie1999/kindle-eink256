.class public Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;
.super Ljava/lang/Object;
.source "ConnectionConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionConfigurationBuilder"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

.field mDeviceObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field mExecutorService:Ljava/util/concurrent/ExecutorService;

.field mMaximumMessageSize:I

.field mRadioBridges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whisperbridge/Transport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;->mContext:Landroid/content/Context;

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;->mRadioBridges:Ljava/util/Map;

    .line 61
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const/16 v1, 0x1000

    .line 62
    iput v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;->mMaximumMessageSize:I

    .line 63
    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;-><init>()V

    iput-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;->mDeviceObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    .line 64
    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;)V

    return-object v0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DSSClient must be defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withContext(Landroid/content/Context;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;
    .locals 1

    if-eqz p1, :cond_0

    .line 85
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;->mContext:Landroid/content/Context;

    return-object p0

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withDSSClient(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;
    .locals 1

    if-eqz p1, :cond_0

    .line 104
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    return-object p0

    .line 102
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dssClient can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withDeviceObservers(Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;",
            ">;>;)",
            "Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 74
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;->mDeviceObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    return-object p0

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "observers must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withMaximumMessageSize(I)Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;
    .locals 0

    .line 112
    iput p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;->mMaximumMessageSize:I

    return-object p0
.end method

.method public withRadioBridges(Ljava/util/Map;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whisperbridge/Transport;",
            ">;)",
            "Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;->mRadioBridges:Ljava/util/Map;

    return-object p0

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "radio bridges can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
