.class Lcom/amazon/device/ads/MetricsCollector$MetricHitStartTime;
.super Lcom/amazon/device/ads/MetricsCollector$MetricHit;
.source "MetricsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/MetricsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MetricHitStartTime"
.end annotation


# instance fields
.field public final startTime:J


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/Metrics$MetricType;J)V
    .locals 0

    .line 225
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/MetricsCollector$MetricHit;-><init>(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 226
    iput-wide p2, p0, Lcom/amazon/device/ads/MetricsCollector$MetricHitStartTime;->startTime:J

    return-void
.end method
