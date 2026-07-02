.class public Lcom/amazon/kindle/com/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;
.super Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;
.source "MD5DigestCalculatingInputStream.java"


# instance fields
.field private digest:Ljava/security/MessageDigest;

.field private digestLastMarked:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 44
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->newMD5()Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->digest:Ljava/security/MessageDigest;

    return-void
.end method

.method private cloneFrom(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;
    .locals 2

    .line 57
    :try_start_0
    invoke-virtual {p1}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unexpected"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private newMD5()Ljava/security/MessageDigest;
    .locals 3

    :try_start_0
    const-string v0, "MD5"

    .line 49
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getMd5Digest()[B
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public mark(I)V
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-super {p0, p1}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->mark(I)V

    .line 71
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->digest:Ljava/security/MessageDigest;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->cloneFrom(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->digestLastMarked:Ljava/security/MessageDigest;

    :cond_0
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-super {p0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->digest:Ljava/security/MessageDigest;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update(B)V

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->read([BII)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    :cond_0
    return p3
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-super {p0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->reset()V

    .line 82
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->digestLastMarked:Ljava/security/MessageDigest;

    if-nez v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->newMD5()Ljava/security/MessageDigest;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_0
    invoke-direct {p0, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->cloneFrom(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->digest:Ljava/security/MessageDigest;

    return-void

    .line 88
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
