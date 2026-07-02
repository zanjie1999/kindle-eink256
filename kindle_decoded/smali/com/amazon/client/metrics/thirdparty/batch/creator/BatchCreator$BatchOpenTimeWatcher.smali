.class Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator$BatchOpenTimeWatcher;
.super Ljava/lang/Object;
.source "BatchCreator.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatchOpenTimeWatcher"
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
.field final synthetic this$0:Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;


# direct methods
.method private constructor <init>(Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator$BatchOpenTimeWatcher;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator$1;)V
    .locals 0

    .line 337
    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator$BatchOpenTimeWatcher;-><init>(Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;)V

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

    .line 337
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator$BatchOpenTimeWatcher;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator$BatchOpenTimeWatcher;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->checkBatchOpenTimeAndEnqueueIfReady()V

    .line 344
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator$BatchOpenTimeWatcher;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;

    invoke-static {v0}, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->access$100(Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;)V

    const/4 v0, 0x0

    return-object v0
.end method
