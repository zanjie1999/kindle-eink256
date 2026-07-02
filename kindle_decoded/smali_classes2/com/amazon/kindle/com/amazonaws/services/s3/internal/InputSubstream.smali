.class public final Lcom/amazon/kindle/com/amazonaws/services/s3/internal/InputSubstream;
.super Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;
.source "InputSubstream.java"


# instance fields
.field private final closeSourceStream:Z

.field private currentPosition:J

.field private markedPosition:J

.field private final requestedLength:J

.field private final requestedOffset:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JJZ)V
    .locals 2

    .line 48
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/InputSubstream;->markedPosition:J

    .line 50
    iput-wide v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    .line 51
    iput-wide p4, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/InputSubstream;->requestedLength:J

    .line 52
    iput-wide p2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/InputSubstream;->requestedOffset:J

    .line 53
    iput-boolean p6, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/InputSubstream;->closeSourceStream:Z

    return-void
.end method


# virtual methods
.method public available()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-wide v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    iget-wide v2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/InputSubstream;->requestedOffset:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 109
    iget-wide v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/InputSubstream;->requestedLength:J

    goto :goto_0

    .line 111
    :cond_0
    iget-wide v4, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/InputSubstream;->requestedLength:J

    add-long/2addr v4, v2

    sub-long v0, v4, v0

    .line 113
    :goto_0
    invoke-super {p0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->available()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/InputSubstream;->closeSourceStream:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-super {p0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->close()V

    :cond_0
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 2

    monitor-enter p0

    .line 86
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    iput-wide v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/InputSubstream;->markedPosition:J

    .line 87
    invoke-super {p0, p1}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 59
    invoke-virtual {p0, v1, v2, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/InputSubstream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    return v0

    .line 63
    :cond_0
    aget-byte v0, v1, v2

    return v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    :goto_0
    iget-wide v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    iget-wide v2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/InputSubstream;->requestedOffset:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    sub-long/2addr v2, v0

    .line 69
    invoke-super {p0, v2, v3}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->skip(J)J

    move-result-wide v0

    .line 70
    iget-wide v2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    goto :goto_0

    .line 73
    :cond_0
    iget-wide v4, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/InputSubstream;->requestedLength:J

    add-long/2addr v4, v2

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-gtz v2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    int-to-long v0, p3

    .line 77
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 78
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->read([BII)I

    move-result p1

    .line 79
    iget-wide p2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    return p1
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 92
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/InputSubstream;->markedPosition:J

    iput-wide v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    .line 93
    invoke-super {p0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
