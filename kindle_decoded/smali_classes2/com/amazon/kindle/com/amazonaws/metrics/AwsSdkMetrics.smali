.class public final enum Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;
.super Ljava/lang/Enum;
.source "AwsSdkMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;

.field private static final DEFAULT_METRICS_ENABLED:Z

.field private static final DEFAULT_METRIC_COLLECTOR_FACTORY:Ljava/lang/String; = "com.amazon.kindle.com.amazonaws.metrics.internal.cloudwatch.DefaultMetricCollectorFactory"

.field private static final MBEAN_OBJECT_NAME:Ljava/lang/String;

.field private static final QUEUE_POLL_TIMEOUT_MILLI_MINUMUM:I = 0x3e8

.field private static final REGISTRY:Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;

.field private static volatile credentialFile:Ljava/lang/String;

.field private static volatile credentialProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;

.field private static dirtyEnabling:Z

.field private static volatile hostMetricName:Ljava/lang/String;

.field private static volatile jvmMetricName:Ljava/lang/String;

.field private static volatile machineMetricsExcluded:Z

.field private static volatile mc:Lcom/amazon/kindle/com/amazonaws/metrics/MetricCollector;

.field private static volatile metricNameSpace:Ljava/lang/String;

.field private static volatile metricQueueSize:Ljava/lang/Integer;

.field private static volatile perHostMetricsIncluded:Z

.field private static volatile queuePollTimeoutMilli:Ljava/lang/Long;

.field private static volatile region:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

.field private static volatile singleMetricNamespace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;

    .line 70
    sput-object v1, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.amazonaws.management:type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;

    .line 80
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->MBEAN_OBJECT_NAME:Ljava/lang/String;

    const-string v1, "AWSSDK/Java"

    .line 215
    sput-object v1, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->metricNameSpace:Ljava/lang/String;

    const-string v1, "com.amazon.kindle.com.amazonaws.sdk.enableDefaultMetrics"

    .line 243
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 244
    :goto_0
    sput-boolean v3, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->DEFAULT_METRICS_ENABLED:Z

    if-eqz v3, :cond_f

    const-string v3, ","

    .line 246
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 250
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v4, v3, :cond_e

    aget-object v8, v1, v4

    .line 251
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    if-nez v5, :cond_1

    const-string v9, "excludeMachineMetrics"

    .line 252
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_1
    if-nez v6, :cond_2

    const-string v9, "includePerHostMetrics"

    .line 254
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_2
    if-nez v7, :cond_3

    const-string/jumbo v9, "useSingleMetricNamespace"

    .line 256
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_3
    const-string v9, "="

    .line 259
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 260
    array-length v10, v9

    const/4 v11, 0x2

    if-ne v10, v11, :cond_d

    .line 261
    aget-object v10, v9, v0

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 262
    aget-object v9, v9, v2

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    :try_start_0
    const-string v11, "credentialFile"

    .line 264
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 265
    invoke-static {v9}, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->setCredentialFile0(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    const-string v11, "cloudwatchRegion"

    .line 266
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 267
    invoke-static {v9}, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->fromName(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    move-result-object v8

    sput-object v8, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->region:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    goto/16 :goto_2

    :cond_5
    const-string v11, "metricQueueSize"

    .line 268
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 269
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lt v9, v2, :cond_6

    .line 273
    sput-object v8, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->metricQueueSize:Ljava/lang/Integer;

    goto/16 :goto_2

    .line 271
    :cond_6
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "metricQueueSize must be at least 1"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_7
    const-string v11, "getQueuePollTimeoutMilli"

    .line 274
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 275
    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, v9}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v8}, Ljava/lang/Long;->intValue()I

    move-result v9

    const/16 v10, 0x3e8

    if-lt v9, v10, :cond_8

    .line 279
    sput-object v8, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->queuePollTimeoutMilli:Ljava/lang/Long;

    goto :goto_2

    .line 277
    :cond_8
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "getQueuePollTimeoutMilli must be at least 1000"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_9
    const-string v11, "metricNameSpace"

    .line 280
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 281
    sput-object v9, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->metricNameSpace:Ljava/lang/String;

    goto :goto_2

    :cond_a
    const-string v11, "jvmMetricName"

    .line 282
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 283
    sput-object v9, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->jvmMetricName:Ljava/lang/String;

    goto :goto_2

    :cond_b
    const-string v11, "hostMetricName"

    .line 284
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 285
    sput-object v9, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->hostMetricName:Ljava/lang/String;

    goto :goto_2

    .line 287
    :cond_c
    const-class v9, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;

    invoke-static {v9}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring unrecognized parameter: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v8

    .line 291
    const-class v9, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;

    invoke-static {v9}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v9

    const-string v10, "Ignoring failure"

    invoke-interface {v9, v10, v8}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_d
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 296
    :cond_e
    sput-boolean v5, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->machineMetricsExcluded:Z

    .line 297
    sput-boolean v6, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->perHostMetricsIncluded:Z

    .line 298
    sput-boolean v7, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->singleMetricNamespace:Z

    .line 302
    :cond_f
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->REGISTRY:Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;

    return-void
.end method

.method public static addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 532
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->REGISTRY:Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;

    .line 534
    invoke-virtual {v0, p0}, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->addMetricTypes(Ljava/util/Collection;)Z

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static declared-synchronized enableDefaultMetrics()Z
    .locals 5

    const-class v0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;

    monitor-enter v0

    .line 482
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazon/kindle/com/amazonaws/metrics/MetricCollector;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazon/kindle/com/amazonaws/metrics/MetricCollector;

    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/metrics/MetricCollector;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 483
    :cond_0
    sget-boolean v1, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->dirtyEnabling:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 486
    sput-boolean v1, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->dirtyEnabling:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "com.amazon.kindle.com.amazonaws.metrics.internal.cloudwatch.DefaultMetricCollectorFactory"

    .line 488
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 489
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/com/amazonaws/metrics/MetricCollector$Factory;

    .line 490
    invoke-interface {v3}, Lcom/amazon/kindle/com/amazonaws/metrics/MetricCollector$Factory;->getInstance()Lcom/amazon/kindle/com/amazonaws/metrics/MetricCollector;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 492
    invoke-static {v3}, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->setMetricCollector(Lcom/amazon/kindle/com/amazonaws/metrics/MetricCollector;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    :try_start_2
    sput-boolean v2, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->dirtyEnabling:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 493
    monitor-exit v0

    return v1

    .line 499
    :cond_1
    :goto_0
    :try_start_3
    sput-boolean v2, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->dirtyEnabling:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 496
    :try_start_4
    const-class v3, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;

    invoke-static {v3}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v3

    const-string v4, "Failed to enable the default metrics"

    .line 497
    invoke-interface {v3, v4, v1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 502
    :cond_2
    :goto_1
    monitor-exit v0

    return v2

    .line 499
    :goto_2
    :try_start_5
    sput-boolean v2, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->dirtyEnabling:Z

    .line 500
    throw v1

    .line 484
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Reentrancy is not allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getRequestMetricCollector()Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;",
            ">()TT;"
        }
    .end annotation

    .line 320
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazon/kindle/com/amazonaws/metrics/MetricCollector;

    if-nez v0, :cond_0

    .line 321
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->isDefaultMetricsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->enableDefaultMetrics()Z

    .line 325
    :cond_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazon/kindle/com/amazonaws/metrics/MetricCollector;

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;->NONE:Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazon/kindle/com/amazonaws/metrics/MetricCollector;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/metrics/MetricCollector;->getRequestMetricCollector()Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getServiceMetricCollector()Lcom/amazon/kindle/com/amazonaws/metrics/ServiceMetricCollector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/kindle/com/amazonaws/metrics/ServiceMetricCollector;",
            ">()TT;"
        }
    .end annotation

    .line 334
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazon/kindle/com/amazonaws/metrics/MetricCollector;

    if-nez v0, :cond_0

    .line 335
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->isDefaultMetricsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->enableDefaultMetrics()Z

    .line 339
    :cond_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazon/kindle/com/amazonaws/metrics/MetricCollector;

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/com/amazonaws/metrics/ServiceMetricCollector;->NONE:Lcom/amazon/kindle/com/amazonaws/metrics/ServiceMetricCollector;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazon/kindle/com/amazonaws/metrics/MetricCollector;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/metrics/MetricCollector;->getServiceMetricCollector()Lcom/amazon/kindle/com/amazonaws/metrics/ServiceMetricCollector;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static isDefaultMetricsEnabled()Z
    .locals 1

    .line 415
    sget-boolean v0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->DEFAULT_METRICS_ENABLED:Z

    return v0
.end method

.method public static isMetricsEnabled()Z
    .locals 1

    .line 445
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazon/kindle/com/amazonaws/metrics/MetricCollector;

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/metrics/MetricCollector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static setCredentialFile0(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 638
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/auth/PropertiesCredentials;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/amazon/kindle/com/amazonaws/auth/PropertiesCredentials;-><init>(Ljava/io/File;)V

    .line 640
    const-class v1, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;

    monitor-enter v1

    .line 641
    :try_start_0
    new-instance v2, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$1;

    invoke-direct {v2, v0}, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$1;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/PropertiesCredentials;)V

    sput-object v2, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->credentialProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;

    .line 651
    sput-object p0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->credentialFile:Ljava/lang/String;

    .line 652
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static declared-synchronized setMetricCollector(Lcom/amazon/kindle/com/amazonaws/metrics/MetricCollector;)V
    .locals 2

    const-class v0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;

    monitor-enter v0

    .line 382
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazon/kindle/com/amazonaws/metrics/MetricCollector;

    .line 383
    sput-object p0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazon/kindle/com/amazonaws/metrics/MetricCollector;

    if-eqz v1, :cond_0

    .line 385
    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/metrics/MetricCollector;->stop()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;
    .locals 1

    .line 70
    const-class v0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;
    .locals 1

    .line 70
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;

    invoke-virtual {v0}, [Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;

    return-object v0
.end method
