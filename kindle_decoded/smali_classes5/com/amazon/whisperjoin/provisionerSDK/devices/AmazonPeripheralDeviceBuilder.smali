.class public Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;
.super Ljava/lang/Object;
.source "AmazonPeripheralDeviceBuilder.java"


# instance fields
.field private mConnectionConfiguration:Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;

.field private mDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

.field private mDiscoveredRadio:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;

.field private mEncodingHelpers:Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;

.field private mTrustNegotiatorProvider:Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAmazonPeripheralDevice()Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;
    .locals 7

    .line 45
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;->mDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;->mConnectionConfiguration:Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;->mDiscoveredRadio:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;

    if-eqz v0, :cond_0

    .line 57
    new-instance v5, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;

    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;->mDiscoveredRadio:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;->mConnectionConfiguration:Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;->getTransportProvider()Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/TransportProvider;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/TransportProvider;)V

    .line 60
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;->mDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    iget-object v3, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;->mConnectionConfiguration:Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;

    iget-object v4, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;->mEncodingHelpers:Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;

    iget-object v6, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;->mTrustNegotiatorProvider:Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelper;Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;)V

    return-object v0

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Preferred Radio must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection Configuration can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DeviceDetails cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConnectionConfiguration(Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;)Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;->mConnectionConfiguration:Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;

    return-object p0
.end method

.method public setDeviceDetails(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;->mDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    return-object p0
.end method

.method public setDiscoveredRadio(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;)Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;->mDiscoveredRadio:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;

    return-object p0
.end method

.method public setTrustNegotiatorProvider(Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;)Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;->mTrustNegotiatorProvider:Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;

    return-object p0
.end method
