.class public Lcom/amazon/kindle/performance/PerformanceEventBuilder;
.super Ljava/lang/Object;
.source "PerformanceEventBuilder.java"


# instance fields
.field private final isStart:Z

.field private metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final metric:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

.field private timestamp:J


# direct methods
.method constructor <init>(Lcom/amazon/kindle/performance/KindlePerformanceConstants;JZ)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->metadata:Ljava/util/Map;

    .line 51
    iput-object p1, p0, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->metric:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    .line 52
    iput-wide p2, p0, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->timestamp:J

    .line 53
    iput-boolean p4, p0, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->isStart:Z

    return-void
.end method

.method public static createEndEvent(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;
    .locals 4

    .line 73
    new-instance v0, Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;-><init>(Lcom/amazon/kindle/performance/KindlePerformanceConstants;JZ)V

    return-object v0
.end method

.method public static createStartEvent(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;
    .locals 4

    .line 63
    new-instance v0, Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;-><init>(Lcom/amazon/kindle/performance/KindlePerformanceConstants;JZ)V

    return-object v0
.end method


# virtual methods
.method public addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->metadata:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->metadata:Ljava/util/Map;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->metadata:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lcom/amazon/kindle/performance/PerformanceEvent;
    .locals 7

    .line 106
    iget-object v0, p0, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->metadata:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->metadata:Ljava/util/Map;

    .line 109
    :cond_0
    new-instance v0, Lcom/amazon/kindle/performance/PerformanceEvent;

    iget-object v2, p0, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->metric:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    iget-wide v3, p0, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->timestamp:J

    iget-boolean v5, p0, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->isStart:Z

    iget-object v6, p0, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->metadata:Ljava/util/Map;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/performance/PerformanceEvent;-><init>(Lcom/amazon/kindle/performance/KindlePerformanceConstants;JZLjava/util/Map;)V

    return-object v0
.end method

.method public buildAndSend()V
    .locals 1

    .line 117
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isReleaseBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->build()Lcom/amazon/kindle/performance/PerformanceEvent;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/performance/PerformanceLogger;->logPerformanceEvent(Lcom/amazon/kindle/performance/PerformanceEvent;)Z

    :cond_0
    return-void
.end method

.method public overrideTimestamp(J)Lcom/amazon/kindle/performance/PerformanceEventBuilder;
    .locals 0

    .line 82
    iput-wide p1, p0, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->timestamp:J

    return-object p0
.end method
