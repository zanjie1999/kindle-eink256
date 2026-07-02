.class public Lcom/amazon/kindle/com/amazonaws/metrics/MetricFilterInputStream;
.super Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;
.source "MetricFilterInputStream.java"


# instance fields
.field private final helper:Lcom/amazon/kindle/com/amazonaws/metrics/ByteThroughputHelper;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/metrics/ThroughputMetricType;Ljava/io/InputStream;)V
    .locals 0

    .line 39
    invoke-direct {p0, p2}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 40
    new-instance p2, Lcom/amazon/kindle/com/amazonaws/metrics/ByteThroughputHelper;

    invoke-direct {p2, p1}, Lcom/amazon/kindle/com/amazonaws/metrics/ByteThroughputHelper;-><init>(Lcom/amazon/kindle/com/amazonaws/metrics/ThroughputMetricType;)V

    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/metrics/MetricFilterInputStream;->helper:Lcom/amazon/kindle/com/amazonaws/metrics/ByteThroughputHelper;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/metrics/MetricFilterInputStream;->helper:Lcom/amazon/kindle/com/amazonaws/metrics/ByteThroughputHelper;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/metrics/ByteThroughputHelper;->reportMetrics()V

    .line 57
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 58
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->abortIfNeeded()V

    return-void
.end method

.method public final isMetricActivated()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->abortIfNeeded()V

    .line 46
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/metrics/MetricFilterInputStream;->helper:Lcom/amazon/kindle/com/amazonaws/metrics/ByteThroughputHelper;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/metrics/ByteThroughputHelper;->startTiming()J

    move-result-wide v0

    .line 47
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_0

    .line 49
    iget-object p2, p0, Lcom/amazon/kindle/com/amazonaws/metrics/MetricFilterInputStream;->helper:Lcom/amazon/kindle/com/amazonaws/metrics/ByteThroughputHelper;

    invoke-virtual {p2, p1, v0, v1}, Lcom/amazon/kindle/com/amazonaws/metrics/ByteThroughputHelper;->increment(IJ)V

    :cond_0
    return p1
.end method
