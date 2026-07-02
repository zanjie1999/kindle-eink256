.class interface abstract Lcom/amazon/device/ads/Metrics$MetricsSubmitter;
.super Ljava/lang/Object;
.source "Metrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/Metrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "MetricsSubmitter"
.end annotation


# virtual methods
.method public abstract getInstrumentationPixelUrl()Ljava/lang/String;
.end method

.method public abstract getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;
.end method

.method public abstract resetMetricsCollector()V
.end method
