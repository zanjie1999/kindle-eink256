.class public final Lcom/google/crypto/tink/aead/AesGcmSivKeyManager;
.super Lcom/google/crypto/tink/KeyTypeManager;
.source "AesGcmSivKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/KeyTypeManager<",
        "Lcom/google/crypto/tink/proto/AesGcmSivKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .line 45
    const-class v0, Lcom/google/crypto/tink/proto/AesGcmSivKey;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/crypto/tink/KeyTypeManager$PrimitiveFactory;

    new-instance v2, Lcom/google/crypto/tink/aead/AesGcmSivKeyManager$1;

    const-class v3, Lcom/google/crypto/tink/Aead;

    invoke-direct {v2, v3}, Lcom/google/crypto/tink/aead/AesGcmSivKeyManager$1;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/crypto/tink/KeyTypeManager;-><init>(Ljava/lang/Class;[Lcom/google/crypto/tink/KeyTypeManager$PrimitiveFactory;)V

    return-void
.end method

.method private static canUseAesGcmSive()Z
    .locals 1

    :try_start_0
    const-string v0, "AES/GCM-SIV/NoPadding"

    .line 127
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static register(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newKeyAllowed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 135
    invoke-static {}, Lcom/google/crypto/tink/aead/AesGcmSivKeyManager;->canUseAesGcmSive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Lcom/google/crypto/tink/aead/AesGcmSivKeyManager;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/AesGcmSivKeyManager;-><init>()V

    invoke-static {v0, p0}, Lcom/google/crypto/tink/Registry;->registerKeyManager(Lcom/google/crypto/tink/KeyTypeManager;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getKeyType()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public keyFactory()Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/KeyTypeManager$KeyFactory<",
            "Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;",
            "Lcom/google/crypto/tink/proto/AesGcmSivKey;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/google/crypto/tink/aead/AesGcmSivKeyManager$2;

    const-class v1, Lcom/google/crypto/tink/proto/AesGcmSivKeyFormat;

    invoke-direct {v0, p0, v1}, Lcom/google/crypto/tink/aead/AesGcmSivKeyManager$2;-><init>(Lcom/google/crypto/tink/aead/AesGcmSivKeyManager;Ljava/lang/Class;)V

    return-object v0
.end method

.method public keyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;
    .locals 1

    .line 67
    sget-object v0, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->SYMMETRIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    return-object v0
.end method

.method public parseKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesGcmSivKey;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteString"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 78
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/crypto/tink/proto/AesGcmSivKey;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesGcmSivKey;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "byteString"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/aead/AesGcmSivKeyManager;->parseKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesGcmSivKey;

    move-result-object p1

    return-object p1
.end method

.method public validateKey(Lcom/google/crypto/tink/proto/AesGcmSivKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesGcmSivKey;->getVersion()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmSivKeyManager;->getVersion()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/crypto/tink/subtle/Validators;->validateVersion(II)V

    .line 73
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesGcmSivKey;->getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result p1

    invoke-static {p1}, Lcom/google/crypto/tink/subtle/Validators;->validateAesKeySize(I)V

    return-void
.end method

.method public bridge synthetic validateKey(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 43
    check-cast p1, Lcom/google/crypto/tink/proto/AesGcmSivKey;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/aead/AesGcmSivKeyManager;->validateKey(Lcom/google/crypto/tink/proto/AesGcmSivKey;)V

    return-void
.end method
