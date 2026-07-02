.class public Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;
.super Ljava/lang/Object;
.source "ConnectionConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

.field private final mDeviceObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mMaximumMessageSize:I

.field private final mRadioBridges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whisperbridge/Transport;",
            ">;"
        }
    .end annotation
.end field

.field private final mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iget-object v0, p1, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;->mContext:Landroid/content/Context;

    .line 39
    iget-object v0, p1, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;->mRadioBridges:Ljava/util/Map;

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;->mRadioBridges:Ljava/util/Map;

    .line 40
    iget-object v0, p1, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 41
    iget v0, p1, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;->mMaximumMessageSize:I

    iput v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;->mMaximumMessageSize:I

    .line 42
    iget-object v0, p1, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;->mDeviceObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;->mDeviceObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    .line 43
    iget-object p1, p1, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    .line 44
    new-instance p1, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;

    invoke-direct {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;-><init>()V

    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    return-void
.end method


# virtual methods
.method public getDSSClient()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    return-object v0
.end method

.method public getDeviceObservers()Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;",
            ">;>;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;->mDeviceObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getMaximumMessageSize()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;->mMaximumMessageSize:I

    return v0
.end method

.method public getTransportProvider()Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/TransportProvider;
    .locals 2

    .line 150
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/TransportProvider$DefaultTransportProvider;

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;->mRadioBridges:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/TransportProvider$DefaultTransportProvider;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
