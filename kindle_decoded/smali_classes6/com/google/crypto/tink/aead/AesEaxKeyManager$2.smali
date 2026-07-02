.class Lcom/google/crypto/tink/aead/AesEaxKeyManager$2;
.super Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;
.source "AesEaxKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/crypto/tink/aead/AesEaxKeyManager;->keyFactory()Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/KeyTypeManager$KeyFactory<",
        "Lcom/google/crypto/tink/proto/AesEaxKeyFormat;",
        "Lcom/google/crypto/tink/proto/AesEaxKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/crypto/tink/aead/AesEaxKeyManager;


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/aead/AesEaxKeyManager;Ljava/lang/Class;)V
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

    .line 83
    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesEaxKeyManager$2;->this$0:Lcom/google/crypto/tink/aead/AesEaxKeyManager;

    invoke-direct {p0, p2}, Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public createKey(Lcom/google/crypto/tink/proto/AesEaxKeyFormat;)Lcom/google/crypto/tink/proto/AesEaxKey;
    .locals 2
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

    .line 101
    invoke-static {}, Lcom/google/crypto/tink/proto/AesEaxKey;->newBuilder()Lcom/google/crypto/tink/proto/AesEaxKey$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;->getKeySize()I

    move-result v1

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/AesEaxKey$Builder;->setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesEaxKey$Builder;

    .line 103
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;->getParams()Lcom/google/crypto/tink/proto/AesEaxParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/AesEaxKey$Builder;->setParams(Lcom/google/crypto/tink/proto/AesEaxParams;)Lcom/google/crypto/tink/proto/AesEaxKey$Builder;

    iget-object p1, p0, Lcom/google/crypto/tink/aead/AesEaxKeyManager$2;->this$0:Lcom/google/crypto/tink/aead/AesEaxKeyManager;

    .line 104
    invoke-virtual {p1}, Lcom/google/crypto/tink/aead/AesEaxKeyManager;->getVersion()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/AesEaxKey$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/AesEaxKey$Builder;

    .line 105
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/AesEaxKey;

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

    .line 83
    check-cast p1, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/aead/AesEaxKeyManager$2;->createKey(Lcom/google/crypto/tink/proto/AesEaxKeyFormat;)Lcom/google/crypto/tink/proto/AesEaxKey;

    move-result-object p1

    return-object p1
.end method

.method public parseKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesEaxKeyFormat;
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

    .line 96
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesEaxKeyFormat;

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

    .line 83
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/aead/AesEaxKeyManager$2;->parseKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesEaxKeyFormat;

    move-result-object p1

    return-object p1
.end method

.method public validateKeyFormat(Lcom/google/crypto/tink/proto/AesEaxKeyFormat;)V
    .locals 2
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

    .line 86
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;->getKeySize()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateAesKeySize(I)V

    .line 87
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;->getParams()Lcom/google/crypto/tink/proto/AesEaxParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesEaxParams;->getIvSize()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;->getParams()Lcom/google/crypto/tink/proto/AesEaxParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesEaxParams;->getIvSize()I

    move-result p1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
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

    .line 83
    check-cast p1, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/aead/AesEaxKeyManager$2;->validateKeyFormat(Lcom/google/crypto/tink/proto/AesEaxKeyFormat;)V

    return-void
.end method
