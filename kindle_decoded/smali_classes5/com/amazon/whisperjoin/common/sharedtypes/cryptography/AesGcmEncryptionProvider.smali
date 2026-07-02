.class public Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AesGcmEncryptionProvider;
.super Ljava/lang/Object;
.source "AesGcmEncryptionProvider.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/EncryptionProvider;


# instance fields
.field private final mAesGcmCipher:Lcom/amazon/whispercloak/cipher/AesGcmCipher;

.field private final mKey:[B

.field private final mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;


# direct methods
.method public constructor <init>(Lcom/amazon/whispercloak/cipher/AesGcmCipher;[BLcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AesGcmEncryptionProvider;->mAesGcmCipher:Lcom/amazon/whispercloak/cipher/AesGcmCipher;

    .line 36
    iput-object p3, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AesGcmEncryptionProvider;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    .line 37
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AesGcmEncryptionProvider;->mKey:[B

    return-void
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AesGcmEncryptionProvider;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    const-class v1, Lcom/amazon/whispercloak/SecureMessage;

    .line 49
    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    .line 48
    invoke-interface {v0, p1, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;->deserialize([BLcom/google/common/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispercloak/SecureMessage;

    .line 50
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AesGcmEncryptionProvider;->mAesGcmCipher:Lcom/amazon/whispercloak/cipher/AesGcmCipher;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AesGcmEncryptionProvider;->mKey:[B

    invoke-virtual {v0, v1, p1}, Lcom/amazon/whispercloak/cipher/AesGcmCipher;->decrypt([BLcom/amazon/whispercloak/SecureMessage;)[B

    move-result-object p1

    return-object p1
.end method

.method public encrypt([B)[B
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AesGcmEncryptionProvider;->mAesGcmCipher:Lcom/amazon/whispercloak/cipher/AesGcmCipher;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AesGcmEncryptionProvider;->mKey:[B

    invoke-virtual {v0, v1, p1}, Lcom/amazon/whispercloak/cipher/AesGcmCipher;->encrypt([B[B)Lcom/amazon/whispercloak/SecureMessage;

    move-result-object p1

    .line 43
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AesGcmEncryptionProvider;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method
