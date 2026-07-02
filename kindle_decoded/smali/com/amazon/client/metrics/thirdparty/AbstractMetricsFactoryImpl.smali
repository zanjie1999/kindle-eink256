.class public abstract Lcom/amazon/client/metrics/thirdparty/AbstractMetricsFactoryImpl;
.super Lcom/amazon/client/metrics/thirdparty/BaseMetricsFactoryImpl;
.source "AbstractMetricsFactoryImpl.java"


# static fields
.field private static final ANONYMOUS:Z = true

.field private static final DEFAULT_ALLOW_RUNNING_TIMERS:Z = false

.field private static final NON_ANONYMOUS:Z = false

.field private static final TAG:Ljava/lang/String; = "AbstractMetricsFactoryImpl"

.field protected static sMetricsFactory:Lcom/amazon/client/metrics/thirdparty/MetricsFactory;

.field protected static sMetricsService:Lcom/amazon/client/metrics/thirdparty/IMetricsService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsFactoryImpl;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getService()Lcom/amazon/client/metrics/thirdparty/IMetricsService;
.end method

.method public record(Lcom/amazon/client/metrics/thirdparty/MetricEvent;Lcom/amazon/client/metrics/thirdparty/Priority;)V
    .locals 1

    .line 157
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/Priority;->RESERVED_FOR_LOCATION_SERVICE:Lcom/amazon/client/metrics/thirdparty/Priority;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    sget-object p2, Lcom/amazon/client/metrics/thirdparty/Priority;->NORMAL:Lcom/amazon/client/metrics/thirdparty/Priority;

    sget-object v0, Lcom/amazon/client/metrics/thirdparty/Channel;->LOCATION:Lcom/amazon/client/metrics/thirdparty/Channel;

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/client/metrics/thirdparty/AbstractMetricsFactoryImpl;->record(Lcom/amazon/client/metrics/thirdparty/MetricEvent;Lcom/amazon/client/metrics/thirdparty/Priority;Lcom/amazon/client/metrics/thirdparty/Channel;)V

    goto :goto_0

    .line 159
    :cond_0
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/Priority;->RESERVED_FOR_NON_ANONYMOUS_METRICS:Lcom/amazon/client/metrics/thirdparty/Priority;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    sget-object p2, Lcom/amazon/client/metrics/thirdparty/Priority;->NORMAL:Lcom/amazon/client/metrics/thirdparty/Priority;

    sget-object v0, Lcom/amazon/client/metrics/thirdparty/Channel;->NON_ANONYMOUS:Lcom/amazon/client/metrics/thirdparty/Channel;

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/client/metrics/thirdparty/AbstractMetricsFactoryImpl;->record(Lcom/amazon/client/metrics/thirdparty/MetricEvent;Lcom/amazon/client/metrics/thirdparty/Priority;Lcom/amazon/client/metrics/thirdparty/Channel;)V

    goto :goto_0

    .line 162
    :cond_1
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/Channel;->ANONYMOUS:Lcom/amazon/client/metrics/thirdparty/Channel;

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/client/metrics/thirdparty/AbstractMetricsFactoryImpl;->record(Lcom/amazon/client/metrics/thirdparty/MetricEvent;Lcom/amazon/client/metrics/thirdparty/Priority;Lcom/amazon/client/metrics/thirdparty/Channel;)V

    :goto_0
    return-void
.end method

.method public record(Lcom/amazon/client/metrics/thirdparty/MetricEvent;Lcom/amazon/client/metrics/thirdparty/Priority;Lcom/amazon/client/metrics/thirdparty/Channel;)V
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "AbstractMetricsFactoryImpl"

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    sget-object v3, Lcom/amazon/client/metrics/thirdparty/Priority;->RESERVED_FOR_LOCATION_SERVICE:Lcom/amazon/client/metrics/thirdparty/Priority;

    invoke-virtual {v3, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/amazon/client/metrics/thirdparty/Priority;->RESERVED_FOR_NON_ANONYMOUS_METRICS:Lcom/amazon/client/metrics/thirdparty/Priority;

    invoke-virtual {v3, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 97
    instance-of v3, v0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;

    if-eqz v3, :cond_1

    .line 98
    move-object v3, v0

    check-cast v3, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;

    invoke-virtual {v3}, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->getAsDataPointsAndClear()Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 100
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->getAsDataPoints()Ljava/util/List;

    move-result-object v3

    .line 101
    invoke-interface/range {p1 .. p1}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->clear()V

    :goto_0
    if-eqz v3, :cond_6

    .line 104
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    .line 109
    :cond_2
    sget-object v4, Lcom/amazon/client/metrics/thirdparty/Channel;->NON_ANONYMOUS:Lcom/amazon/client/metrics/thirdparty/Channel;

    move-object/from16 v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    .line 110
    invoke-interface {v0, v4}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->setAnonymous(Z)V

    .line 111
    invoke-interface/range {p1 .. p1}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->getNonAnonymousCustomerId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 113
    new-instance v7, Lcom/amazon/client/metrics/thirdparty/DataPoint;

    sget-object v8, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->NON_ANONYMOUS_CUSTOMER_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    invoke-virtual {v8}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/amazon/client/metrics/thirdparty/DataPointType;->DV:Lcom/amazon/client/metrics/thirdparty/DataPointType;

    invoke-direct {v7, v8, v4, v6, v9}, Lcom/amazon/client/metrics/thirdparty/DataPoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/client/metrics/thirdparty/DataPointType;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->getNonAnonymousSessionId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 117
    new-instance v7, Lcom/amazon/client/metrics/thirdparty/DataPoint;

    sget-object v8, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->NON_ANONYMOUS_SESSION_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    invoke-virtual {v8}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/amazon/client/metrics/thirdparty/DataPointType;->DV:Lcom/amazon/client/metrics/thirdparty/DataPointType;

    invoke-direct {v7, v8, v4, v6, v9}, Lcom/amazon/client/metrics/thirdparty/DataPoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/client/metrics/thirdparty/DataPointType;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 120
    invoke-interface {v0, v4}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->setNonAnonymousCustomerId(Ljava/lang/String;)V

    .line 121
    invoke-interface {v0, v4}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->setNonAnonymousSessionId(Ljava/lang/String;)V

    .line 122
    invoke-interface {v0, v6}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->setAnonymous(Z)V

    .line 124
    :cond_5
    :goto_1
    new-instance v4, Lcom/amazon/client/metrics/thirdparty/DataPoint;

    sget-object v7, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->ANONYMOUS:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    invoke-virtual {v7}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->getAnonymous()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/amazon/client/metrics/thirdparty/DataPointType;->DV:Lcom/amazon/client/metrics/thirdparty/DataPointType;

    invoke-direct {v4, v7, v8, v6, v9}, Lcom/amazon/client/metrics/thirdparty/DataPoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/client/metrics/thirdparty/DataPointType;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :try_start_0
    invoke-static {v3}, Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;->convertToEnvelopes(Ljava/util/List;)Ljava/util/List;

    move-result-object v17

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/client/metrics/thirdparty/AbstractMetricsFactoryImpl;->getService()Lcom/amazon/client/metrics/thirdparty/IMetricsService;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    invoke-interface/range {p1 .. p1}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->getProgram()Ljava/lang/String;

    move-result-object v13

    .line 133
    invoke-interface/range {p1 .. p1}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->getSource()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 132
    invoke-interface/range {v10 .. v17}, Lcom/amazon/client/metrics/thirdparty/IMetricsService;->record(IILjava/lang/String;Ljava/lang/String;JLjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "record : RemoteException caught while trying to record metric: "

    .line 140
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v1, "record : SecurityException caught while trying to record metric: "

    .line 136
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    return-void

    .line 90
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "record: Using Deprecated Priority. This will not work as intended. Consider using Channel instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
