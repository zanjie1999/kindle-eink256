.class public Lcom/amazon/whisperjoin/provisionerSDK/radios/BasicConnectionFactory;
.super Ljava/lang/Object;
.source "BasicConnectionFactory.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/radios/ConnectionFactory;


# instance fields
.field private final mConnectionConfiguration:Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 21
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/BasicConnectionFactory;->mConnectionConfiguration:Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "connectionConfiguration can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public create(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;
    .locals 2

    .line 28
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;-><init>()V

    .line 29
    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;->setDeviceDetails(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;

    .line 30
    invoke-virtual {v0, p2}, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;->setDiscoveredRadio(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;)Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;

    iget-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/BasicConnectionFactory;->mConnectionConfiguration:Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;

    .line 31
    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;->setConnectionConfiguration(Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;)Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;

    new-instance p1, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;

    iget-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/BasicConnectionFactory;->mConnectionConfiguration:Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;

    .line 32
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;->getDSSClient()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    move-result-object p2

    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;-><init>()V

    invoke-direct {p1, p2, v1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;)V

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;->setTrustNegotiatorProvider(Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;)Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;

    .line 33
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDeviceBuilder;->createAmazonPeripheralDevice()Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;

    move-result-object p1

    return-object p1
.end method
