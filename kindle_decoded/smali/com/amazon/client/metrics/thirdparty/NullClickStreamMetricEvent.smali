.class public Lcom/amazon/client/metrics/thirdparty/NullClickStreamMetricEvent;
.super Lcom/amazon/client/metrics/thirdparty/NullMetricEvent;
.source "NullClickStreamMetricEvent.java"

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/ClickStreamMetricsEvent;


# static fields
.field private static final NULL_REQUEST_ID:Ljava/lang/String; = " "


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/client/metrics/thirdparty/NullMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;)V

    return-void
.end method


# virtual methods
.method public setUsageInfo(Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;)V
    .locals 0

    return-void
.end method
