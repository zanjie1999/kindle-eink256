.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;
.source "BlessDiscoveredWhisperJoinDeviceOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$BlessDiscoveredDevice;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BlessDiscoveredWhisperJoinDeviceOperation"


# instance fields
.field private final mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

.field private final mDeferredDiscoveryHandler:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;

.field private final mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

.field private final mProvisioningManagerProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;

.field private final mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    .line 54
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    .line 55
    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->mProvisioningManagerProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;

    .line 56
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    .line 57
    iput-object p5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->mDeferredDiscoveryHandler:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->getDiscoveredDistressedProvisioneeRequest(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->getDiscoveredProvisionableDeviceRequest(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GenericDSSDiscoveryResponse;)Lio/reactivex/Observable;
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->handleDssBlessedProvisionable(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GenericDSSDiscoveryResponse;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GenericDSSDiscoveryResponse;)Lio/reactivex/Observable;
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->handleDssDiscoveryDeferment(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GenericDSSDiscoveryResponse;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private getDiscoveredDistressedProvisioneeRequest(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;
    .locals 13

    .line 114
    new-instance v5, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    invoke-direct {v5}, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;-><init>()V

    .line 115
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->setSoftwareVersionIndex(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->setDeviceName(Ljava/lang/String;)V

    .line 118
    new-instance v12, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->FFS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;->AUTHENTICATED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;->UNAUTHENTICATED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;

    :goto_0
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    .line 120
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getClientNonce()Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2;->getDistressErrorCode()Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getRadios()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;->getSignalStrength()I

    move-result v6

    .line 125
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getProductIndex()Ljava/lang/String;

    move-result-object v7

    .line 126
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getDeviceIdentity()Ljava/lang/String;

    move-result-object v8

    .line 128
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->getProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    move-result-object v10

    .line 129
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getAdvertisedSdkVersionIndex()I

    move-result v11

    const-string v9, "BluetoothLowEnergy"

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;I)V

    return-object v12
.end method

.method private getDiscoveredProvisionableDeviceRequest(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;
    .locals 3

    .line 139
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;-><init>()V

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    .line 140
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getClientAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->setProvisionerApplicationName(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    .line 141
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getClientAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->setProvisionerApplicationVersion(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getRadios()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;->getSignalStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->setRssi(I)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;

    move-result-object v0

    .line 143
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->setDeviceName(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getClientNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->setNonce(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;

    move-result-object v0

    .line 145
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getProductIndex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->setProductIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;

    move-result-object v0

    .line 146
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getDeviceIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->setAuthMaterialIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->setSoftwareVersionIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    .line 148
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->setProvisioningMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->FFS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;->AUTHENTICATED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;->UNAUTHENTICATED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;

    :goto_0
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->setTrustMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;

    move-result-object v0

    .line 150
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->getProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->setProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;

    move-result-object v0

    .line 151
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getAdvertisedSdkVersionIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->setAdvertisedSdkVersionIndex(I)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->createRequest()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;

    move-result-object p1

    return-object p1
.end method

.method private getProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;
    .locals 2

    .line 156
    new-instance v0, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    invoke-direct {v0}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;-><init>()V

    .line 157
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->setManufacturer(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->setFirmwareVersion(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->setDeviceModel(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getClientAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->setApplication(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getClientAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->setApplicationVersion(Ljava/lang/String;)V

    return-object v0
.end method

.method private handleDssBlessedProvisionable(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GenericDSSDiscoveryResponse;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GenericDSSDiscoveryResponse;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            ">;"
        }
    .end annotation

    .line 171
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->TAG:Ljava/lang/String;

    const-string v1, "Blessed by DSS to setup wjProvisionee"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->mProvisioningManagerProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;->createWJProvsionee(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object p1

    .line 174
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/DiscoveredProvisionable;

    .line 176
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GenericDSSDiscoveryResponse;->getProvisionerEventReportUrl()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GenericDSSDiscoveryResponse;->getProvisionableEventReportUrl()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GenericDSSDiscoveryResponse;->getSessionToken()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/DiscoveredProvisionable;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 182
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;->success(Ljava/util/List;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;

    move-result-object p1

    .line 183
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private handleDssDiscoveryDeferment(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GenericDSSDiscoveryResponse;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GenericDSSDiscoveryResponse;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            ">;"
        }
    .end annotation

    .line 188
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->TAG:Ljava/lang/String;

    const-string v1, "Deferring discovery event based on DSS response"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->mDeferredDiscoveryHandler:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GenericDSSDiscoveryResponse;->getWaitTime()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;->defer(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;J)V

    .line 190
    new-instance p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/DeviceProvisioningDeferredException;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GenericDSSDiscoveryResponse;->getWaitTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/DeviceProvisioningDeferredException;-><init>(J)V

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;->error(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;

    move-result-object p1

    .line 191
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$BlessDiscoveredDevice;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation$1;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
