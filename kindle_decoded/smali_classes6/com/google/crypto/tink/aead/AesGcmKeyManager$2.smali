.class Lcom/google/crypto/tink/aead/AesGcmKeyManager$2;
.super Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;
.source "AesGcmKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/crypto/tink/aead/AesGcmKeyManager;->keyFactory()Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/KeyTypeManager$KeyFactory<",
        "Lcom/google/crypto/tink/proto/AesGcmKeyFormat;",
        "Lcom/google/crypto/tink/proto/AesGcmKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/crypto/tink/aead/AesGcmKeyManager;


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/aead/AesGcmKeyManager;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "clazz"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesGcmKeyManager$2;->this$0:Lcom/google/crypto/tink/aead/AesGcmKeyManager;

    invoke-direct {p0, p2}, Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public createKey(Lcom/google/crypto/tink/proto/AesGcmKeyFormat;)Lcom/google/crypto/tink/proto/AesGcmKey;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 94
    invoke-static {}, Lcom/google/crypto/tink/proto/AesGcmKey;->newBuilder()Lcom/google/crypto/tink/proto/AesGcmKey$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;->getKeySize()I

    move-result p1

    invoke-static {p1}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/AesGcmKey$Builder;->setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesGcmKey$Builder;

    iget-object p1, p0, Lcom/google/crypto/tink/aead/AesGcmKeyManager$2;->this$0:Lcom/google/crypto/tink/aead/AesGcmKeyManager;

    .line 96
    invoke-virtual {p1}, Lcom/google/crypto/tink/aead/AesGcmKeyManager;->getVersion()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/AesGcmKey$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/AesGcmKey$Builder;

    .line 97
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/AesGcmKey;

    return-object p1
.end method

.method public bridge synthetic createKey(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 80
    check-cast p1, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/aead/AesGcmKeyManager$2;->createKey(Lcom/google/crypto/tink/proto/AesGcmKeyFormat;)Lcom/google/crypto/tink/proto/AesGcmKey;

    move-result-object p1

    return-object p1
.end method

.method public parseKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesGcmKeyFormat;
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

    .line 89
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesGcmKeyFormat;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
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

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/aead/AesGcmKeyManager$2;->parseKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesGcmKeyFormat;

    move-result-object p1

    return-object p1
.end method

.method public validateKeyFormat(Lcom/google/crypto/tink/proto/AesGcmKeyFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 83
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;->getKeySize()I

    move-result p1

    invoke-static {p1}, Lcom/google/crypto/tink/subtle/Validators;->validateAesKeySize(I)V

    return-void
.end method

.method public bridge synthetic validateKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 80
    check-cast p1, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/aead/AesGcmKeyManager$2;->validateKeyFormat(Lcom/google/crypto/tink/proto/AesGcmKeyFormat;)V

    return-void
.end method
