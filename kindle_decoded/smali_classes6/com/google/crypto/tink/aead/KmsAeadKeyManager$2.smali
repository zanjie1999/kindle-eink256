.class Lcom/google/crypto/tink/aead/KmsAeadKeyManager$2;
.super Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;
.source "KmsAeadKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/crypto/tink/aead/KmsAeadKeyManager;->keyFactory()Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/KeyTypeManager$KeyFactory<",
        "Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;",
        "Lcom/google/crypto/tink/proto/KmsAeadKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/crypto/tink/aead/KmsAeadKeyManager;


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/aead/KmsAeadKeyManager;Ljava/lang/Class;)V
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

    .line 78
    iput-object p1, p0, Lcom/google/crypto/tink/aead/KmsAeadKeyManager$2;->this$0:Lcom/google/crypto/tink/aead/KmsAeadKeyManager;

    invoke-direct {p0, p2}, Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public createKey(Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;)Lcom/google/crypto/tink/proto/KmsAeadKey;
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

    .line 90
    invoke-static {}, Lcom/google/crypto/tink/proto/KmsAeadKey;->newBuilder()Lcom/google/crypto/tink/proto/KmsAeadKey$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/KmsAeadKey$Builder;->setParams(Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;)Lcom/google/crypto/tink/proto/KmsAeadKey$Builder;

    iget-object p1, p0, Lcom/google/crypto/tink/aead/KmsAeadKeyManager$2;->this$0:Lcom/google/crypto/tink/aead/KmsAeadKeyManager;

    invoke-virtual {p1}, Lcom/google/crypto/tink/aead/KmsAeadKeyManager;->getVersion()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/KmsAeadKey$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/KmsAeadKey$Builder;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/KmsAeadKey;

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

    .line 78
    check-cast p1, Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/aead/KmsAeadKeyManager$2;->createKey(Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;)Lcom/google/crypto/tink/proto/KmsAeadKey;

    move-result-object p1

    return-object p1
.end method

.method public parseKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;
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

    .line 85
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;

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

    .line 78
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/aead/KmsAeadKeyManager$2;->parseKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;

    move-result-object p1

    return-object p1
.end method

.method public validateKeyFormat(Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;)V
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

    .line 78
    check-cast p1, Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/aead/KmsAeadKeyManager$2;->validateKeyFormat(Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;)V

    return-void
.end method
