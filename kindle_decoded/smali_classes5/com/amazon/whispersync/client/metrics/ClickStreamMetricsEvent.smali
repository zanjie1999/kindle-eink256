.class public interface abstract Lcom/amazon/whispersync/client/metrics/ClickStreamMetricsEvent;
.super Ljava/lang/Object;
.source "ClickStreamMetricsEvent.java"

# interfaces
.implements Lcom/amazon/whispersync/client/metrics/MetricEvent;


# virtual methods
.method public abstract getRequestId()Ljava/lang/String;
.end method

.method public abstract setECommerceInfo(Lcom/amazon/whispersync/client/metrics/clickstream/ECommerceInfo;)V
.end method

.method public abstract setImpressionTrackingData(Lcom/amazon/whispersync/client/metrics/clickstream/ImpressionTrackingData;)V
.end method

.method public abstract setUsageInfo(Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;)V
.end method

.method public abstract validateMetricEvent()Z
.end method
