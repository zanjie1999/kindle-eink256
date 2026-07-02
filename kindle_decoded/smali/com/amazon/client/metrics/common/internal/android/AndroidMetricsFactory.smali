.class public Lcom/amazon/client/metrics/common/internal/android/AndroidMetricsFactory;
.super Ljava/lang/Object;
.source "AndroidMetricsFactory.java"

# interfaces
.implements Lcom/amazon/client/metrics/common/MetricsFactory;


# static fields
.field private static sAndroidMetricsFactory:Lcom/amazon/client/metrics/common/internal/android/AndroidMetricsFactory;


# instance fields
.field private final mDelegateThirdPartyMetricsFactory:Lcom/amazon/client/metrics/thirdparty/MetricsFactory;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 48
    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/AndroidMetricsFactoryImpl;->getInstance(Landroid/content/Context;)Lcom/amazon/client/metrics/thirdparty/MetricsFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricsFactory;->mDelegateThirdPartyMetricsFactory:Lcom/amazon/client/metrics/thirdparty/MetricsFactory;

    return-void

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Context may not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amazon/client/metrics/common/internal/android/AndroidMetricsFactory;
    .locals 2

    const-class v0, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricsFactory;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricsFactory;->sAndroidMetricsFactory:Lcom/amazon/client/metrics/common/internal/android/AndroidMetricsFactory;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricsFactory;

    invoke-direct {v1, p0}, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricsFactory;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricsFactory;->sAndroidMetricsFactory:Lcom/amazon/client/metrics/common/internal/android/AndroidMetricsFactory;

    .line 62
    :cond_0
    sget-object p0, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricsFactory;->sAndroidMetricsFactory:Lcom/amazon/client/metrics/common/internal/android/AndroidMetricsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public createClickStreamMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/common/ClickStreamMetricsEvent;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricsFactory;->mDelegateThirdPartyMetricsFactory:Lcom/amazon/client/metrics/thirdparty/MetricsFactory;

    .line 147
    invoke-interface {v0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/MetricsFactory;->createClickStreamMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/ClickStreamMetricsEvent;

    move-result-object p1

    .line 149
    invoke-static {p1}, Lcom/amazon/client/metrics/common/MetricEventConverter;->convertClickStreamMetricsEvent_fromThirdPartyToCommon(Lcom/amazon/client/metrics/thirdparty/ClickStreamMetricsEvent;)Lcom/amazon/client/metrics/common/ClickStreamMetricsEvent;

    move-result-object p1

    return-object p1
.end method

.method public createMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/common/MetricEvent;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricsFactory;->mDelegateThirdPartyMetricsFactory:Lcom/amazon/client/metrics/thirdparty/MetricsFactory;

    .line 68
    invoke-interface {v0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/MetricsFactory;->createMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object p1

    .line 69
    invoke-static {p1}, Lcom/amazon/client/metrics/common/MetricEventConverter;->convertMetricEvent_fromThirdPartyToCommon(Lcom/amazon/client/metrics/thirdparty/MetricEvent;)Lcom/amazon/client/metrics/common/MetricEvent;

    move-result-object p1

    return-object p1
.end method

.method public getDelegateMetricsFactory()Lcom/amazon/client/metrics/thirdparty/MetricsFactory;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricsFactory;->mDelegateThirdPartyMetricsFactory:Lcom/amazon/client/metrics/thirdparty/MetricsFactory;

    return-object v0
.end method

.method public record(Lcom/amazon/client/metrics/common/MetricEvent;)V
    .locals 2

    .line 120
    sget-object v0, Lcom/amazon/client/metrics/common/Priority;->NORMAL:Lcom/amazon/client/metrics/common/Priority;

    sget-object v1, Lcom/amazon/client/metrics/common/Channel;->ANONYMOUS:Lcom/amazon/client/metrics/common/Channel;

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricsFactory;->record(Lcom/amazon/client/metrics/common/MetricEvent;Lcom/amazon/client/metrics/common/Priority;Lcom/amazon/client/metrics/common/Channel;)V

    return-void
.end method

.method public record(Lcom/amazon/client/metrics/common/MetricEvent;Lcom/amazon/client/metrics/common/Priority;)V
    .locals 1

    .line 125
    sget-object v0, Lcom/amazon/client/metrics/common/Channel;->ANONYMOUS:Lcom/amazon/client/metrics/common/Channel;

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricsFactory;->record(Lcom/amazon/client/metrics/common/MetricEvent;Lcom/amazon/client/metrics/common/Priority;Lcom/amazon/client/metrics/common/Channel;)V

    return-void
.end method

.method public record(Lcom/amazon/client/metrics/common/MetricEvent;Lcom/amazon/client/metrics/common/Priority;Lcom/amazon/client/metrics/common/Channel;)V
    .locals 1

    .line 130
    sget-object v0, Lcom/amazon/client/metrics/common/Priority;->RESERVED_FOR_NON_ANONYMOUS_METRICS:Lcom/amazon/client/metrics/common/Priority;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    sget-object p2, Lcom/amazon/client/metrics/common/Priority;->NORMAL:Lcom/amazon/client/metrics/common/Priority;

    .line 132
    sget-object p3, Lcom/amazon/client/metrics/common/Channel;->NON_ANONYMOUS:Lcom/amazon/client/metrics/common/Channel;

    goto :goto_0

    .line 133
    :cond_0
    sget-object v0, Lcom/amazon/client/metrics/common/Priority;->RESERVED_FOR_LOCATION_SERVICE:Lcom/amazon/client/metrics/common/Priority;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    sget-object p2, Lcom/amazon/client/metrics/common/Priority;->NORMAL:Lcom/amazon/client/metrics/common/Priority;

    .line 135
    sget-object p3, Lcom/amazon/client/metrics/common/Channel;->LOCATION:Lcom/amazon/client/metrics/common/Channel;

    .line 138
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricsFactory;->mDelegateThirdPartyMetricsFactory:Lcom/amazon/client/metrics/thirdparty/MetricsFactory;

    .line 139
    invoke-static {p1}, Lcom/amazon/client/metrics/common/MetricEventConverter;->convertMetricEvent_fromCommonToThirdParty(Lcom/amazon/client/metrics/common/MetricEvent;)Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object p1

    .line 140
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/client/metrics/thirdparty/Priority;->valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/Priority;

    move-result-object p2

    .line 141
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/amazon/client/metrics/thirdparty/Channel;->valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/Channel;

    move-result-object p3

    .line 138
    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/client/metrics/thirdparty/MetricsFactory;->record(Lcom/amazon/client/metrics/thirdparty/MetricEvent;Lcom/amazon/client/metrics/thirdparty/Priority;Lcom/amazon/client/metrics/thirdparty/Channel;)V

    return-void
.end method
