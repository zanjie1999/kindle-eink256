.class public Lcom/amazon/whisperjoin/provisionerSDK/devices/security/PreSharedSecretTrustNegotiator;
.super Ljava/lang/Object;
.source "PreSharedSecretTrustNegotiator.java"

# interfaces
.implements Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiator;


# instance fields
.field private final mPreSharedSecretBase64:Ljava/lang/String;

.field private final mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 26
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/PreSharedSecretTrustNegotiator;->mPreSharedSecretBase64:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/PreSharedSecretTrustNegotiator;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "serializer can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "preSharedSecretBase64 can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public start(Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;)Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/EncryptionProvider;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;
        }
    .end annotation

    .line 33
    :try_start_0
    new-instance p1, Lcom/amazon/whispercloak/SecureChannelImpl;

    invoke-direct {p1}, Lcom/amazon/whispercloak/SecureChannelImpl;-><init>()V

    .line 34
    invoke-interface {p1}, Lcom/amazon/whispercloak/SecureChannel;->getCipher()Lcom/amazon/whispercloak/cipher/AesGcmCipher;

    .line 35
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AesGcmEncryptionProvider;

    invoke-interface {p1}, Lcom/amazon/whispercloak/SecureChannel;->getCipher()Lcom/amazon/whispercloak/cipher/AesGcmCipher;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/PreSharedSecretTrustNegotiator;->mPreSharedSecretBase64:Ljava/lang/String;

    invoke-static {v1}, Lorg/spongycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/PreSharedSecretTrustNegotiator;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AesGcmEncryptionProvider;-><init>(Lcom/amazon/whispercloak/cipher/AesGcmCipher;[BLcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 37
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
