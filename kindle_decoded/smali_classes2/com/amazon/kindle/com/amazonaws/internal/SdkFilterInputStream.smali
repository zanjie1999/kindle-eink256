.class public Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;
.super Ljava/io/FilterInputStream;
.source "SdkFilterInputStream.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/internal/MetricAware;


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method protected abort()V
    .locals 0

    return-void
.end method

.method protected final abortIfNeeded()V
    .locals 1

    .line 49
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->abort()V

    .line 51
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/AbortedException;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/AbortedException;-><init>()V

    throw v0
.end method

.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->abortIfNeeded()V

    .line 85
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 91
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->abortIfNeeded()V

    return-void
.end method

.method public isMetricActivated()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/amazon/kindle/com/amazonaws/internal/MetricAware;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/internal/MetricAware;

    .line 37
    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/internal/MetricAware;->isMetricActivated()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    monitor-enter p0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->abortIfNeeded()V

    .line 97
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->abortIfNeeded()V

    .line 109
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->abortIfNeeded()V

    .line 67
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->abortIfNeeded()V

    .line 73
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->abortIfNeeded()V

    .line 103
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->abortIfNeeded()V

    .line 79
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
