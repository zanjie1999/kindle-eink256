.class public Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;
.super Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;
.source "AmazonPeripheralDevice.java"


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelper;Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;)V
    .locals 7

    .line 42
    new-instance v4, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;

    invoke-direct {v4}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelper;Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;)V

    return-void
.end method


# virtual methods
.method public addConfiguration(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$9;

    invoke-direct {v1, p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$9;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1

    .line 173
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "configuration can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getVisibleNetworks(I)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$2;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public saveNetwork(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$3;

    invoke-direct {v1, p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$3;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public setRegistrationToken(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$15;

    invoke-direct {v1, p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$15;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1

    .line 263
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "registrationToken can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startNetworkScan()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$1;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$1;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
