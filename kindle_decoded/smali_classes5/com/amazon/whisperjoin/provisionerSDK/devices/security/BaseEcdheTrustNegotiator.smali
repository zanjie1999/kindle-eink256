.class Lcom/amazon/whisperjoin/provisionerSDK/devices/security/BaseEcdheTrustNegotiator;
.super Ljava/lang/Object;
.source "BaseEcdheTrustNegotiator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseEcdheTrustNegotiator"


# instance fields
.field private final mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

.field private final mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 46
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/BaseEcdheTrustNegotiator;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    .line 47
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/BaseEcdheTrustNegotiator;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Serializer can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DSSClient can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static convertPEMtoDER(Ljava/lang/String;)[B
    .locals 3

    const-string v0, "\n"

    .line 140
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 142
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    if-eqz v1, :cond_1

    .line 143
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 146
    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private getPayloadForCommand(Lcom/amazon/whisperbridge/constants/Command;[B[B)[B
    .locals 1

    .line 118
    sget-object v0, Lcom/amazon/whisperbridge/constants/Command;->EXCHANGE_ECDHE_KEY:Lcom/amazon/whisperbridge/constants/Command;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    new-instance p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeRequest;

    invoke-direct {p1, p2, p3}, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeRequest;-><init>([B[B)V

    .line 120
    iget-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/BaseEcdheTrustNegotiator;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    goto :goto_0

    .line 121
    :cond_0
    sget-object v0, Lcom/amazon/whisperbridge/constants/Command;->EXCHANGE_AUTHENTICATED_ECDHE_KEY:Lcom/amazon/whisperbridge/constants/Command;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    new-instance p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;

    invoke-direct {p1, p2, p3}, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;-><init>([B[B)V

    .line 123
    iget-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/BaseEcdheTrustNegotiator;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    :goto_0
    return-object p1

    .line 125
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported Command : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method start(Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;Lcom/amazon/whispercloak/SecureChannel;Lcom/amazon/whisperbridge/constants/Command;)Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/EncryptionProvider;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 56
    invoke-interface {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;->getPeripheralDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;-><init>()V

    .line 58
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getClientNonce()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;->setNonce(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;

    move-result-object v1

    .line 59
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getProductIndex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;->setProductIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;

    move-result-object v1

    .line 60
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getDeviceIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;->setAuthMaterialIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;

    move-result-object v1

    .line 61
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;->setSoftwareVersionIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;->createRequest()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest;

    move-result-object v0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/BaseEcdheTrustNegotiator;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    .line 67
    invoke-interface {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;->startEcdheAuthenticationSession(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest;)Lio/reactivex/Single;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lio/reactivex/Single;->blockingGet()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;

    .line 70
    sget-object v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/BaseEcdheTrustNegotiator;->TAG:Ljava/lang/String;

    const-string v2, "Handling response from DSS - Start Auth Session."

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;->getProvisionerEcdhePublicKeyPemEncoded()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/BaseEcdheTrustNegotiator;->convertPEMtoDER(Ljava/lang/String;)[B

    move-result-object v1

    .line 73
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;->getEcdsaSignatureBase64Encoded()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 75
    sget-object v3, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/BaseEcdheTrustNegotiator;->TAG:Ljava/lang/String;

    const-string v4, "Exchanging Keys with Provisionable"

    invoke-static {v3, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-direct {p0, p3, v1, v2}, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/BaseEcdheTrustNegotiator;->getPayloadForCommand(Lcom/amazon/whisperbridge/constants/Command;[B[B)[B

    move-result-object v1

    .line 77
    invoke-interface {p1, p3, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;->executeCommand(Lcom/amazon/whisperbridge/constants/Command;[B)[B

    move-result-object p1

    .line 79
    sget-object p3, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/BaseEcdheTrustNegotiator;->TAG:Ljava/lang/String;

    const-string v1, "Finalize Auth Session via DSS"

    invoke-static {p3, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance p3, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionRequest;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;->getContinuationToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionRequest;-><init>(Ljava/lang/String;[B)V

    .line 81
    iget-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/BaseEcdheTrustNegotiator;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    .line 82
    invoke-interface {p1, p3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;->finalizeEcdheAuthenticationSession(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionRequest;)Lio/reactivex/Single;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lio/reactivex/Single;->blockingGet()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionResponse;

    .line 85
    sget-object p3, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/BaseEcdheTrustNegotiator;->TAG:Ljava/lang/String;

    const-string v0, "Auth Session Finalized. Creating encryption provider with new shared secret."

    invoke-static {p3, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionResponse;->getSessionKeyDEREncoded()[B

    move-result-object p1

    .line 88
    new-instance p3, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AesGcmEncryptionProvider;

    invoke-interface {p2}, Lcom/amazon/whispercloak/SecureChannel;->getCipher()Lcom/amazon/whispercloak/cipher/AesGcmCipher;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/BaseEcdheTrustNegotiator;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    invoke-direct {p3, p2, p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AesGcmEncryptionProvider;-><init>(Lcom/amazon/whispercloak/cipher/AesGcmCipher;[BLcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    .line 107
    sget-object p2, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/BaseEcdheTrustNegotiator;->TAG:Ljava/lang/String;

    const-string p3, "An exception occurred"

    invoke-static {p2, p3, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    new-instance p2, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;

    invoke-direct {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 97
    sget-object p2, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/BaseEcdheTrustNegotiator;->TAG:Ljava/lang/String;

    const-string p3, "RuntimeException Occurred"

    invoke-static {p2, p3, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 103
    new-instance p2, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 105
    :cond_0
    new-instance p2, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;

    invoke-direct {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 94
    sget-object p2, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/BaseEcdheTrustNegotiator;->TAG:Ljava/lang/String;

    const-string p3, "Interrupted Exception Occurred"

    invoke-static {p2, p3, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    new-instance p2, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;

    invoke-direct {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 91
    sget-object p2, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/BaseEcdheTrustNegotiator;->TAG:Ljava/lang/String;

    const-string p3, "Execution Exception Occurred"

    invoke-static {p2, p3, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    new-instance p2, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;

    invoke-direct {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PeripheralDevice can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
