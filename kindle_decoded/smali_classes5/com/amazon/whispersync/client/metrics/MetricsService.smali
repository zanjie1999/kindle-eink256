.class public Lcom/amazon/whispersync/client/metrics/MetricsService;
.super Ljava/lang/Object;
.source "MetricsService.java"

# interfaces
.implements Lcom/amazon/whispersync/client/metrics/UploadIntentListener;


# static fields
.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private final mBatchCreatorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/client/metrics/Priority;",
            "Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatchTransmitterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;",
            ">;"
        }
    .end annotation
.end field

.field private final mTriggerEvaluator:Lcom/amazon/whispersync/client/metrics/trigger/TriggerEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/client/metrics/trigger/TriggerEvaluator<",
            "Lcom/amazon/whispersync/client/metrics/MetricEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    invoke-direct {v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/MetricsService;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/List;Lcom/amazon/whispersync/client/metrics/trigger/TriggerEvaluator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/client/metrics/Priority;",
            "Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;",
            ">;",
            "Lcom/amazon/whispersync/client/metrics/trigger/TriggerEvaluator<",
            "Lcom/amazon/whispersync/client/metrics/MetricEntry;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/MetricsService;->mBatchCreatorMap:Ljava/util/Map;

    .line 48
    iput-object p2, p0, Lcom/amazon/whispersync/client/metrics/MetricsService;->mBatchTransmitterList:Ljava/util/List;

    .line 49
    iput-object p3, p0, Lcom/amazon/whispersync/client/metrics/MetricsService;->mTriggerEvaluator:Lcom/amazon/whispersync/client/metrics/trigger/TriggerEvaluator;

    .line 50
    invoke-static {p0}, Lcom/amazon/whispersync/client/metrics/MetricsBroadcastReceiver;->addUploadIntentListener(Lcom/amazon/whispersync/client/metrics/UploadIntentListener;)V

    return-void
.end method


# virtual methods
.method public onUploadIntentReceived()V
    .locals 4

    .line 95
    sget-object v0, Lcom/amazon/whispersync/client/metrics/MetricsService;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onUploadIntentReceived"

    const-string v3, "Enqueuing all batches and triggering transmission."

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/MetricsService;->mBatchCreatorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;

    .line 97
    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->enqueueBatchForTransmission(Z)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/MetricsService;->mBatchTransmitterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;

    .line 100
    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->transmitBatches(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public record(Lcom/amazon/whispersync/client/metrics/Priority;Lcom/amazon/whispersync/client/metrics/MetricEntry;)V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/MetricsService;->mTriggerEvaluator:Lcom/amazon/whispersync/client/metrics/trigger/TriggerEvaluator;

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0, p2}, Lcom/amazon/whispersync/client/metrics/trigger/TriggerEvaluator;->evaluate(Ljava/lang/Object;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/MetricsService;->mBatchCreatorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v0, p2}, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->addMetricEntry(Lcom/amazon/whispersync/client/metrics/MetricEntry;)V

    goto :goto_0

    .line 65
    :cond_1
    sget-object p2, Lcom/amazon/whispersync/client/metrics/MetricsService;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "priority"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string/jumbo p1, "record"

    const-string v1, "Metric dropped. No batch pipeline exists at priority level."

    invoke-virtual {p2, p1, v1, v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public shutdown()V
    .locals 7

    .line 73
    sget-object v0, Lcom/amazon/whispersync/client/metrics/MetricsService;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "shutdown"

    const-string v4, "Enqueuing all batches and shutting down batch creators and transmitters."

    invoke-virtual {v0, v3, v4, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/MetricsService;->mBatchCreatorMap:Ljava/util/Map;

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

    check-cast v2, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;

    const/4 v4, 0x1

    .line 77
    :try_start_0
    invoke-virtual {v2, v4}, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->enqueueBatchForTransmission(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 79
    sget-object v6, Lcom/amazon/whispersync/client/metrics/MetricsService;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "Exception enqueuing batches:"

    invoke-virtual {v6, v3, v5, v4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :goto_1
    invoke-virtual {v2}, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->shutdown()V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/MetricsService;->mBatchTransmitterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;

    .line 84
    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->shutdown()V

    goto :goto_2

    .line 86
    :cond_1
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/MetricsBroadcastReceiver;->shutdown()V

    return-void
.end method
