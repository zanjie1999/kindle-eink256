.class Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager$1;
.super Lcom/google/crypto/tink/KeyTypeManager$PrimitiveFactory;
.source "XChaCha20Poly1305KeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/KeyTypeManager$PrimitiveFactory<",
        "Lcom/google/crypto/tink/Aead;",
        "Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key;",
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

    .line 42
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/KeyTypeManager$PrimitiveFactory;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getPrimitive(Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key;)Lcom/google/crypto/tink/Aead;
    .locals 1
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

    .line 45
    new-instance v0, Lcom/google/crypto/tink/subtle/XChaCha20Poly1305;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key;->getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/crypto/tink/subtle/XChaCha20Poly1305;-><init>([B)V

    return-object v0
.end method

.method public bridge synthetic getPrimitive(Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 42
    check-cast p1, Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager$1;->getPrimitive(Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key;)Lcom/google/crypto/tink/Aead;

    move-result-object p1

    return-object p1
.end method
