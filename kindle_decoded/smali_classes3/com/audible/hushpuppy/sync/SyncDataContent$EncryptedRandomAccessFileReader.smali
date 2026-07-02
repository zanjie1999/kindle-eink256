.class final Lcom/audible/hushpuppy/sync/SyncDataContent$EncryptedRandomAccessFileReader;
.super Lcom/audible/hushpuppy/sync/SyncDataContent$AbstractRandomAccessFileReader;
.source "SyncDataContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/sync/SyncDataContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EncryptedRandomAccessFileReader"
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;


# instance fields
.field private final c:Ljavax/crypto/Cipher;

.field private final dec:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    invoke-static {}, Lcom/audible/hushpuppy/sync/SyncIntegration;->getDelegate()Lcom/audible/hushpuppy/sync/SyncIntegration$IDelegate;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/sync/SyncDataContent$EncryptedRandomAccessFileReader;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/sync/SyncIntegration$IDelegate;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/sync/SyncDataContent$EncryptedRandomAccessFileReader;->LOGGER:Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;

    return-void
.end method

.method constructor <init>(Ljavax/crypto/Cipher;Lcom/audible/hushpuppy/sync/IFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 92
    invoke-direct {p0, p2}, Lcom/audible/hushpuppy/sync/SyncDataContent$AbstractRandomAccessFileReader;-><init>(Lcom/audible/hushpuppy/sync/IFile;)V

    const/16 p2, 0x10

    new-array p2, p2, [B

    .line 88
    iput-object p2, p0, Lcom/audible/hushpuppy/sync/SyncDataContent$EncryptedRandomAccessFileReader;->dec:[B

    .line 93
    iput-object p1, p0, Lcom/audible/hushpuppy/sync/SyncDataContent$EncryptedRandomAccessFileReader;->c:Ljavax/crypto/Cipher;

    return-void
.end method

.method private decrypt([B)V
    .locals 0

    .line 99
    :try_start_0
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/sync/SyncDataContent$EncryptedRandomAccessFileReader;->decryptInLoop([B)V
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 105
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/sync/SyncDataContent$EncryptedRandomAccessFileReader;->handle(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 103
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/sync/SyncDataContent$EncryptedRandomAccessFileReader;->handle(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 101
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/sync/SyncDataContent$EncryptedRandomAccessFileReader;->handle(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private decryptInLoop([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 124
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/audible/hushpuppy/sync/SyncDataContent$EncryptedRandomAccessFileReader;->c:Ljavax/crypto/Cipher;

    iget-object v3, p0, Lcom/audible/hushpuppy/sync/SyncDataContent$EncryptedRandomAccessFileReader;->dec:[B

    const/16 v4, 0x10

    invoke-virtual {v2, p1, v1, v4, v3}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    .line 127
    iget-object v2, p0, Lcom/audible/hushpuppy/sync/SyncDataContent$EncryptedRandomAccessFileReader;->dec:[B

    invoke-static {v2, v0, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x10

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handle(Ljava/lang/Exception;)V
    .locals 2

    .line 139
    sget-object v0, Lcom/audible/hushpuppy/sync/SyncDataContent$EncryptedRandomAccessFileReader;->LOGGER:Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    invoke-static {}, Lcom/audible/hushpuppy/sync/SyncIntegration;->getDelegate()Lcom/audible/hushpuppy/sync/SyncIntegration$IDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/sync/SyncIntegration$IDelegate;->reportFailureMetric()V

    return-void
.end method


# virtual methods
.method public read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncDataContent$AbstractRandomAccessFileReader;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    .line 134
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/sync/SyncDataContent$EncryptedRandomAccessFileReader;->decrypt([B)V

    return v0
.end method
