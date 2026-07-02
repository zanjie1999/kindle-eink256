.class public Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;
.super Ljava/lang/Object;
.source "TrustNegotiatorProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TrustNegotiatorProvider"


# instance fields
.field private connectionConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

.field private final mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

.field private final mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

.field private mSharedSecretBase64:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 30
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    .line 31
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;->connectionConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    .line 34
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;->mSharedSecretBase64:Ljava/lang/String;

    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "serializer can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DSSClient can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getTrustProvider()Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiator;
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;->mSharedSecretBase64:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 55
    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/PreSharedSecretTrustNegotiator;

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    invoke-direct {v1, v0, v2}, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/PreSharedSecretTrustNegotiator;-><init>(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;)V

    return-object v1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;->connectionConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    if-eqz v0, :cond_5

    .line 62
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning Trust Negotiator for trust state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;->connectionConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;->getTrustState()Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider$1;->$SwitchMap$com$amazon$whisperjoin$common$sharedtypes$cryptography$TrustProvider$TrustState:[I

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;->connectionConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;->getTrustState()Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Trust State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;->connectionConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;->getTrustState()Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Untrusted Trust State is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_2
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/UnauthenticatedJPAKETrustNegotiator;

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;->connectionConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;->getPin()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;->connectionConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    .line 70
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;->getPublicKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/UnauthenticatedJPAKETrustNegotiator;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;)V

    return-object v0

    .line 67
    :cond_3
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/UnauthenticatedEcdheTrustNegotiator;

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    invoke-direct {v0, v1, v2}, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/UnauthenticatedEcdheTrustNegotiator;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;)V

    return-object v0

    .line 65
    :cond_4
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/AuthenticatedEcdheTrustNegotiator;

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    invoke-direct {v0, v1, v2}, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/AuthenticatedEcdheTrustNegotiator;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;)V

    return-object v0

    .line 59
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must set DeviceConnectionConfiguration before getting provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDeviceConnectionConfiguration(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 41
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;->connectionConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "configuration can not be set to null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPreSharedSecret(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;->mSharedSecretBase64:Ljava/lang/String;

    return-void
.end method
