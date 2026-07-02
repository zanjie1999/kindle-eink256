.class public final Lcom/google/crypto/tink/aead/AeadConfig;
.super Ljava/lang/Object;
.source "AeadConfig.java"


# static fields
.field public static final TINK_1_0_0:Lcom/google/crypto/tink/proto/RegistryConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;-><init>()V

    .line 38
    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;->getKeyType()Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/google/crypto/tink/aead/AesGcmKeyManager;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/AesGcmKeyManager;-><init>()V

    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesGcmKeyManager;->getKeyType()Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/google/crypto/tink/aead/AesGcmSivKeyManager;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/AesGcmSivKeyManager;-><init>()V

    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesGcmSivKeyManager;->getKeyType()Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/google/crypto/tink/aead/AesEaxKeyManager;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/AesEaxKeyManager;-><init>()V

    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesEaxKeyManager;->getKeyType()Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/google/crypto/tink/aead/KmsAeadKeyManager;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/KmsAeadKeyManager;-><init>()V

    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/KmsAeadKeyManager;->getKeyType()Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager;-><init>()V

    .line 44
    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager;->getKeyType()Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/google/crypto/tink/aead/ChaCha20Poly1305KeyManager;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/ChaCha20Poly1305KeyManager;-><init>()V

    .line 46
    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/ChaCha20Poly1305KeyManager;->getKeyType()Ljava/lang/String;

    .line 47
    new-instance v0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;-><init>()V

    .line 48
    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;->getKeyType()Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/google/crypto/tink/proto/RegistryConfig;->getDefaultInstance()Lcom/google/crypto/tink/proto/RegistryConfig;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/AeadConfig;->TINK_1_0_0:Lcom/google/crypto/tink/proto/RegistryConfig;

    .line 67
    :try_start_0
    invoke-static {}, Lcom/google/crypto/tink/aead/AeadConfig;->init()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static init()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    invoke-static {}, Lcom/google/crypto/tink/aead/AeadConfig;->register()V

    return-void
.end method

.method public static register()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 99
    invoke-static {}, Lcom/google/crypto/tink/mac/MacConfig;->register()V

    const/4 v0, 0x1

    .line 100
    invoke-static {v0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;->register(Z)V

    .line 101
    invoke-static {v0}, Lcom/google/crypto/tink/aead/AesEaxKeyManager;->register(Z)V

    .line 102
    invoke-static {v0}, Lcom/google/crypto/tink/aead/AesGcmKeyManager;->register(Z)V

    .line 103
    invoke-static {v0}, Lcom/google/crypto/tink/aead/AesGcmSivKeyManager;->register(Z)V

    .line 104
    invoke-static {v0}, Lcom/google/crypto/tink/aead/ChaCha20Poly1305KeyManager;->register(Z)V

    .line 105
    invoke-static {v0}, Lcom/google/crypto/tink/aead/KmsAeadKeyManager;->register(Z)V

    .line 106
    invoke-static {v0}, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager;->register(Z)V

    .line 107
    invoke-static {v0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;->register(Z)V

    .line 108
    invoke-static {}, Lcom/google/crypto/tink/aead/AeadWrapper;->register()V

    return-void
.end method
