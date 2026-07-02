.class public Lcom/amazon/whisperjoin/provisionerSDK/devices/security/UnauthenticatedJPAKETrustNegotiator;
.super Ljava/lang/Object;
.source "UnauthenticatedJPAKETrustNegotiator.java"

# interfaces
.implements Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiator;


# static fields
.field private static final PROVISIONER_PARTICIPANT_ID:Ljava/lang/String; = "client"

.field private static final TAG:Ljava/lang/String; = "UnauthenticatedJPAKETrustNegotiator"


# instance fields
.field private jpakeSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

.field private final pin:Ljava/lang/String;

.field private final publicKey:Ljava/lang/String;

.field private final serializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 56
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/UnauthenticatedJPAKETrustNegotiator;->pin:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/UnauthenticatedJPAKETrustNegotiator;->publicKey:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/UnauthenticatedJPAKETrustNegotiator;->serializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    return-void

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "serializer can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "publicKey can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "pin can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private doRound1(Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiator;Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/UnauthenticatedJPAKETrustNegotiator;->TAG:Ljava/lang/String;

    const-string v1, "Provisioner: Starting JPAKE Round 1."

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-interface {p1}, Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiator;->createRound1PayloadToSend()Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/UnauthenticatedJPAKETrustNegotiator;->jpakeSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    invoke-interface {v1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;->serialize(Ljava/lang/Object;)[B

    move-result-object v0

    .line 95
    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->JPAKE_ROUND1:Lcom/amazon/whisperbridge/constants/Command;

    invoke-interface {p2, v1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;->executeCommand(Lcom/amazon/whisperbridge/constants/Command;[B)[B

    move-result-object p2

    .line 97
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/UnauthenticatedJPAKETrustNegotiator;->jpakeSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    const-class v1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;

    .line 98
    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    .line 97
    invoke-interface {v0, p2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;->deserialize([BLcom/google/common/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;

    .line 99
    invoke-interface {p1, p2}, Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiator;->validateRound1PayloadReceived(Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;)V

    .line 101
    sget-object p1, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/UnauthenticatedJPAKETrustNegotiator;->TAG:Ljava/lang/String;

    const-string p2, "Provisioner: JPAKE Round 1 completed successfully."

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private doRound2(Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiator;Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/UnauthenticatedJPAKETrustNegotiator;->TAG:Ljava/lang/String;

    const-string v1, "Provisioner: Starting JPAKE Round 2."

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-interface {p1}, Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiator;->createRound2PayloadToSend()Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/UnauthenticatedJPAKETrustNegotiator;->jpakeSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    invoke-interface {v1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;->serialize(Ljava/lang/Object;)[B

    move-result-object v0

    .line 110
    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->JPAKE_ROUND2:Lcom/amazon/whisperbridge/constants/Command;

    invoke-interface {p2, v1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;->executeCommand(Lcom/amazon/whisperbridge/constants/Command;[B)[B

    move-result-object p2

    .line 112
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/UnauthenticatedJPAKETrustNegotiator;->jpakeSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    const-class v1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;

    .line 113
    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    .line 112
    invoke-interface {v0, p2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;->deserialize([BLcom/google/common/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;

    .line 114
    invoke-interface {p1, p2}, Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiator;->validateRound2PayloadReceived(Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;)V

    .line 116
    sget-object p1, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/UnauthenticatedJPAKETrustNegotiator;->TAG:Ljava/lang/String;

    const-string p2, "Provisioner: JPAKE Round 2 completed successfully."

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private doRound3(Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiator;Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;)Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/UnauthenticatedJPAKETrustNegotiator;->TAG:Ljava/lang/String;

    const-string v1, "Provisioner: Starting JPAKE Round 3."

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-interface {p1}, Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiator;->computeCommonKeyMaterial()Ljava/math/BigInteger;

    move-result-object v0

    .line 125
    invoke-interface {p1, v0}, Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiator;->createRound3PayloadToSend(Ljava/math/BigInteger;)Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;

    move-result-object v1

    .line 126
    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/UnauthenticatedJPAKETrustNegotiator;->jpakeSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    invoke-interface {v2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;->serialize(Ljava/lang/Object;)[B

    move-result-object v1

    .line 127
    sget-object v2, Lcom/amazon/whisperbridge/constants/Command;->JPAKE_ROUND3:Lcom/amazon/whisperbridge/constants/Command;

    invoke-interface {p2, v2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;->executeCommand(Lcom/amazon/whisperbridge/constants/Command;[B)[B

    move-result-object p2

    .line 129
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/UnauthenticatedJPAKETrustNegotiator;->jpakeSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    const-class v2, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;

    .line 130
    invoke-static {v2}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v2

    .line 129
    invoke-interface {v1, p2, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;->deserialize([BLcom/google/common/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;

    .line 131
    invoke-interface {p1, p2, v0}, Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiator;->validateRound3PayloadReceived(Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;Ljava/math/BigInteger;)V

    .line 133
    sget-object p1, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/UnauthenticatedJPAKETrustNegotiator;->TAG:Ljava/lang/String;

    const-string p2, "Provisioner: JPAKE Round 3 completed successfully."

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public start(Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;)Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/EncryptionProvider;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 72
    :try_start_0
    new-instance v0, Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiatorImpl;

    const-string v1, "client"

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/UnauthenticatedJPAKETrustNegotiator;->pin:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiatorImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/UnauthenticatedJPAKETrustNegotiator;->jpakeSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;

    invoke-interface {v0}, Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiator;->getParticipant()Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;->getGroup()Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoJPAKEPayloadSerializer;-><init>(Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;)V

    iput-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/UnauthenticatedJPAKETrustNegotiator;->jpakeSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    .line 78
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/UnauthenticatedJPAKETrustNegotiator;->doRound1(Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiator;Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;)V

    .line 79
    invoke-direct {p0, v0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/UnauthenticatedJPAKETrustNegotiator;->doRound2(Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiator;Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;)V

    .line 80
    invoke-direct {p0, v0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/UnauthenticatedJPAKETrustNegotiator;->doRound3(Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiator;Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;)Ljava/math/BigInteger;

    move-result-object p1

    .line 82
    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AesGcmEncryptionProvider;

    new-instance v2, Lcom/amazon/whispercloak/cipher/AesGcmCipher;

    invoke-direct {v2}, Lcom/amazon/whispercloak/cipher/AesGcmCipher;-><init>()V

    invoke-interface {v0, p1}, Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiator;->deriveSessionKey(Ljava/math/BigInteger;)[B

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/UnauthenticatedJPAKETrustNegotiator;->serializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    invoke-direct {v1, v2, p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AesGcmEncryptionProvider;-><init>(Lcom/amazon/whispercloak/cipher/AesGcmCipher;[BLcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 85
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;

    const-string v1, "Exception thrown executing JPAKE key exchange"

    invoke-direct {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 68
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "peripheralDevice can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
