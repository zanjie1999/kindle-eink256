.class public Lcom/amazon/kindle/com/amazonaws/util/CRC32ChecksumCalculatingInputStream;
.super Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;
.source "CRC32ChecksumCalculatingInputStream.java"


# instance fields
.field private crc32:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 39
    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/util/CRC32ChecksumCalculatingInputStream;->crc32:Ljava/util/zip/CRC32;

    return-void
.end method


# virtual methods
.method public getCRC32Checksum()J
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/CRC32ChecksumCalculatingInputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->abortIfNeeded()V

    .line 64
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/util/CRC32ChecksumCalculatingInputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update(I)V

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

    .line 76
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->abortIfNeeded()V

    .line 77
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/CRC32ChecksumCalculatingInputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_0
    return p3
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->abortIfNeeded()V

    .line 54
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/CRC32ChecksumCalculatingInputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 55
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
