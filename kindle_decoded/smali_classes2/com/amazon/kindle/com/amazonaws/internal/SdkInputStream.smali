.class public abstract Lcom/amazon/kindle/com/amazonaws/internal/SdkInputStream;
.super Ljava/io/InputStream;
.source "SdkInputStream.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/internal/MetricAware;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method protected abort()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected final abortIfNeeded()V
    .locals 3

    .line 53
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkInputStream;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v1

    const-string v2, "FYI"

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 59
    :goto_0
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/AbortedException;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/AbortedException;-><init>()V

    throw v0
.end method

.method protected abstract getWrappedInputStream()Ljava/io/InputStream;
.end method

.method public final isMetricActivated()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkInputStream;->getWrappedInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 39
    instance-of v1, v0, Lcom/amazon/kindle/com/amazonaws/internal/MetricAware;

    if-eqz v1, :cond_0

    .line 40
    check-cast v0, Lcom/amazon/kindle/com/amazonaws/internal/MetricAware;

    .line 41
    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/internal/MetricAware;->isMetricActivated()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
