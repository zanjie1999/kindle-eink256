.class Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator$LastPublishTimeWatcher;
.super Ljava/lang/Object;
.source "BatchCreator.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LastPublishTimeWatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;


# direct methods
.method private constructor <init>(Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator$LastPublishTimeWatcher;->this$0:Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator$1;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator$LastPublishTimeWatcher;-><init>(Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 282
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator$LastPublishTimeWatcher;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator$LastPublishTimeWatcher;->this$0:Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;

    invoke-static {v0}, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->access$100(Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator$LastPublishTimeWatcher;->this$0:Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;

    invoke-static {v0}, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->access$200(Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;)Lcom/amazon/whispersync/client/metrics/MetricBatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/MetricBatch;->getMetricEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator$LastPublishTimeWatcher;->this$0:Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->enqueueBatchForTransmission(Z)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator$LastPublishTimeWatcher;->this$0:Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;

    invoke-static {v0}, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->access$300(Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;)V

    const/4 v0, 0x0

    return-object v0
.end method
