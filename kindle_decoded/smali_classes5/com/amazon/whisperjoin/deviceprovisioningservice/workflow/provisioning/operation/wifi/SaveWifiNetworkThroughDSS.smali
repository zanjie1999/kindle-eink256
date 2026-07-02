.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/SaveWifiNetworkThroughDSS;
.super Ljava/lang/Object;
.source "SaveWifiNetworkThroughDSS.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SaveWifiNetworkThroughDSS"


# instance fields
.field private mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

.field private mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

.field private mTrustState:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/SaveWifiNetworkThroughDSS;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    .line 28
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/SaveWifiNetworkThroughDSS;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    .line 29
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/SaveWifiNetworkThroughDSS;->mTrustState:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    return-void
.end method

.method private createSaveWifiNetworkInput(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;Ljava/lang/String;)Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;
    .locals 1

    .line 47
    new-instance v0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;

    invoke-direct {v0}, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;-><init>()V

    .line 49
    invoke-virtual {v0, p1}, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->setAuthMaterialIndex(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, p2}, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->setProductIndex(Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/SaveWifiNetworkThroughDSS;->mTrustState:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/dss/DSSTypesHelper;->getTrustMethodFromTrustState(Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->setTrustMethod(Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/SaveWifiNetworkThroughDSS;->mTrustState:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/dss/DSSTypesHelper;->getKeyExchangeMethodFromTrustState(Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->setKeyExchangeMethod(Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/SaveWifiNetworkThroughDSS;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->setProvisioningMethod(Ljava/lang/String;)V

    .line 56
    invoke-static {p3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/dss/DSSTypesHelper;->convertToDssWifiConfiguration(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;)Lcom/amazon/devicesetupservice/v1/WifiConfiguration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->setWifiConfig(Lcom/amazon/devicesetupservice/v1/WifiConfiguration;)V

    .line 57
    invoke-virtual {v0, p4}, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;->setSessionToken(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public saveWifiNetwork(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;Ljava/lang/String;)Lio/reactivex/Completable;
    .locals 1

    .line 34
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->getPeripheralDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getDeviceIdentity()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getProductIndex()Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/SaveWifiNetworkThroughDSS;->createSaveWifiNetworkInput(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;Ljava/lang/String;)Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;

    move-result-object p1

    .line 38
    sget-object p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/SaveWifiNetworkThroughDSS;->TAG:Ljava/lang/String;

    const-string p3, "Calling DSS to save wifi network"

    invoke-static {p2, p3}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/wifi/SaveWifiNetworkThroughDSS;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;->saveWifiNetwork(Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Completable;->fromSingle(Lio/reactivex/SingleSource;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method
