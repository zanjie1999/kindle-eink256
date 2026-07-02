.class final Lcom/audible/hushpuppy/sync/AES;
.super Ljava/lang/Object;
.source "AES.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "AES/CBC/NoPadding"

.field private static final IV:[B

.field private static final KEY:[B


# instance fields
.field private dCipher:Ljavax/crypto/Cipher;

.field private eCipher:Ljavax/crypto/Cipher;

.field private final logger:Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 18
    fill-array-data v1, :array_0

    sput-object v1, Lcom/audible/hushpuppy/sync/AES;->KEY:[B

    new-array v0, v0, [B

    .line 19
    fill-array-data v0, :array_1

    sput-object v0, Lcom/audible/hushpuppy/sync/AES;->IV:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "AES/CBC/NoPadding"

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/audible/hushpuppy/sync/SyncIntegration;->getDelegate()Lcom/audible/hushpuppy/sync/SyncIntegration$IDelegate;

    move-result-object v1

    const-class v2, Lcom/audible/hushpuppy/sync/AES;

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/sync/SyncIntegration$IDelegate;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;

    move-result-object v1

    iput-object v1, p0, Lcom/audible/hushpuppy/sync/AES;->logger:Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;

    .line 28
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Lcom/audible/hushpuppy/sync/AES;->KEY:[B

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 29
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lcom/audible/hushpuppy/sync/AES;->IV:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 32
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    iput-object v3, p0, Lcom/audible/hushpuppy/sync/AES;->eCipher:Ljavax/crypto/Cipher;

    .line 33
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/sync/AES;->dCipher:Ljavax/crypto/Cipher;

    .line 35
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/AES;->eCipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 36
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/AES;->dCipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 39
    iget-object v1, p0, Lcom/audible/hushpuppy/sync/AES;->logger:Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;

    const-string v2, "AES ciphers not available"

    invoke-interface {v1, v2, v0}, Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
