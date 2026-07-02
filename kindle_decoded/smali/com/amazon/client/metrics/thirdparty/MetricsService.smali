.class public Lcom/amazon/client/metrics/thirdparty/MetricsService;
.super Ljava/lang/Object;
.source "MetricsService.java"

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/UploadIntentListener;


# static fields
.field private static final log:Lcom/amazon/dp/logger/DPLogger;


# instance fields
.field private final mBatchCreatorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;",
            "Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatchTransmitterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/amazon/dp/logger/DPLogger;

    invoke-direct {v0}, Lcom/amazon/dp/logger/DPLogger;-><init>()V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/MetricsService;->log:Lcom/amazon/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/utils/thirdparty/DeviceUtil;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/utils/thirdparty/DeviceUtil;",
            "Ljava/util/Map<",
            "Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;",
            "Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 75
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/MetricsService;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    .line 76
    iput-object p2, p0, Lcom/amazon/client/metrics/thirdparty/MetricsService;->mBatchCreatorMap:Ljava/util/Map;

    .line 77
    iput-object p3, p0, Lcom/amazon/client/metrics/thirdparty/MetricsService;->mBatchTransmitterList:Ljava/util/List;

    .line 78
    invoke-static {p0}, Lcom/amazon/client/metrics/thirdparty/MetricsBroadcastReceiver;->addUploadIntentListener(Lcom/amazon/client/metrics/thirdparty/UploadIntentListener;)V

    return-void

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "BatchTransmitter list can not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "BatchCreatorMap can not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "DeviceUtil can not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onUploadIntentReceived()V
    .locals 4

    .line 122
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/MetricsService;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onUploadIntentReceived"

    const-string v3, "Enqueuing all batches and triggering transmission."

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/MetricsService;->mBatchCreatorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;

    .line 124
    invoke-virtual {v1}, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->enqueueBatchForTransmission()V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/MetricsService;->mBatchTransmitterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    const/4 v2, 0x1

    .line 127
    invoke-virtual {v1, v2}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->transmitBatches(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public record(Lcom/amazon/client/metrics/thirdparty/MetricEntry;Lcom/amazon/client/metrics/thirdparty/Priority;Lcom/amazon/client/metrics/thirdparty/Channel;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/MetricsService;->mBatchCreatorMap:Ljava/util/Map;

    new-instance v1, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;

    invoke-direct {v1, p2, p3}, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;-><init>(Lcom/amazon/client/metrics/thirdparty/Priority;Lcom/amazon/client/metrics/thirdparty/Channel;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, p1}, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->addMetricEntry(Lcom/amazon/client/metrics/thirdparty/MetricEntry;)V

    goto :goto_0

    .line 92
    :cond_0
    sget-object p1, Lcom/amazon/client/metrics/thirdparty/MetricsService;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const-string p2, "Metric dropped. No batch pipeline exists for priority %s and channel %s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    const-string/jumbo v0, "record"

    invoke-virtual {p1, v0, p2, p3}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public shutdown()V
    .locals 7

    .line 100
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/MetricsService;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "shutdown"

    const-string v4, "Enqueuing all batches and shutting down batch creators and transmitters."

    invoke-virtual {v0, v3, v4, v2}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/MetricsService;->mBatchCreatorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;

    .line 104
    :try_start_0
    invoke-virtual {v2}, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->enqueueBatchForTransmission()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 106
    sget-object v5, Lcom/amazon/client/metrics/thirdparty/MetricsService;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v1

    const-string v4, "Exception enqueuing batches:"

    invoke-virtual {v5, v3, v4, v6}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :goto_1
    invoke-virtual {v2}, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->shutdown()V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/MetricsService;->mBatchTransmitterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    .line 111
    invoke-virtual {v1}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->shutdown()V

    goto :goto_2

    .line 113
    :cond_1
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/MetricsBroadcastReceiver;->shutdown()V

    return-void
.end method
