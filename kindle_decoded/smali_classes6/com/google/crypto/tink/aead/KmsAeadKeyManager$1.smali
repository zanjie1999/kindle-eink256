.class Lcom/google/crypto/tink/aead/KmsAeadKeyManager$1;
.super Lcom/google/crypto/tink/KeyTypeManager$PrimitiveFactory;
.source "KmsAeadKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/crypto/tink/aead/KmsAeadKeyManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/KeyTypeManager$PrimitiveFactory<",
        "Lcom/google/crypto/tink/Aead;",
        "Lcom/google/crypto/tink/proto/KmsAeadKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/KeyTypeManager$PrimitiveFactory;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getPrimitive(Lcom/google/crypto/tink/proto/KmsAeadKey;)Lcom/google/crypto/tink/Aead;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyProto"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 44
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KmsAeadKey;->getParams()Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;->getKeyUri()Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-static {p1}, Lcom/google/crypto/tink/KmsClients;->get(Ljava/lang/String;)Lcom/google/crypto/tink/KmsClient;

    move-result-object v0

    .line 46
    invoke-interface {v0, p1}, Lcom/google/crypto/tink/KmsClient;->getAead(Ljava/lang/String;)Lcom/google/crypto/tink/Aead;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getPrimitive(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "keyProto"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 41
    check-cast p1, Lcom/google/crypto/tink/proto/KmsAeadKey;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/aead/KmsAeadKeyManager$1;->getPrimitive(Lcom/google/crypto/tink/proto/KmsAeadKey;)Lcom/google/crypto/tink/Aead;

    move-result-object p1

    return-object p1
.end method
